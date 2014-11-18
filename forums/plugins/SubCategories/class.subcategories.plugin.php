<?php

$PluginInfo['SubCategories'] = array(
   'Description' => 'Display subcategories on a Discussions page of a category. Does not support "coma-seperated for categories over X level". ',
   'Version' => '0.99.1',
   'Author' => "Jongos",
   'AuthorEmail' => 'orang.jahat@gmail.com',
   'AuthorUrl' => 'Too poor to own a website'
);

class SubCategories extends Gdn_Plugin {

    public $HTML = '';
    public $DoHeadings;
    public $MaxDisplayDepth;
    public $ShowTabs;
    public $Initial_Depth = 0;
    public $ColonelSender;

    function __construct() {
        $this->DoHeadings = C('Vanilla.Categories.DoHeadings');
        $this->MaxDisplayDepth = C('Vanilla.Categories.MaxDisplayDepth');
        $this->ShowTabs = C('Vanilla.Categories.ShowTabs');       
        parent::__construct();
    }

    public function CategoriesController_BeforeGetDiscussions_Handler(&$Sender) {
        $this->ColonelSender = $Sender;
        $MasterId = $Sender->CategoryID;
        $CatTree = new CategoryModel();
        $Cat = $CatTree->GetSubtree($MasterId);
        
        //Check if return array contains only one value (no child)
        //change it's key to zero.
        if (count ($Cat) == 1) { 
            $key = array_keys($Cat);
            $newCat = array();
            $newCat[0] = $Cat[$key[0]]; 
            unset($Cat); 
            $Cat = $newCat; 
            unset($newCat);
        }
        
        
        $Depth= $Cat[0]['Depth'];
        $this->Initial_Depth = (int)$Depth;
        $this->WrapHTML($Cat[0]);
        $this->Recurse($Cat, $MasterId);
        $Text .= '</ul>';
        $Sender->AddAsset('Content', $this->HTML, 'SubCategories');              
        
        return;
    }

    public function Recurse($Data, $Id) {
        //  Sort $Data, group with siblings (same ParentCategoryId), and later
        //  sorted among them (the siblings) according to the Sort value, 
        //  ascendingly.
        $parentid = array();
        $sort = array();
        foreach ($Data as $Datum) {
            $parentid[] = $Datum['ParentCategoryID'];
            $sort[] = $Datum ['Sort'];
        }
        array_multisort($parentid, SORT_ASC, $sort, SORT_ASC, $Data);
        //Reiterate
        foreach ($Data as $Datum) {
            //Filter out root Category from processing
            If ($Datum['CategoryID'] != $Id) {
                //Let pass only if it's child to category with ID == $Id
                If ($Datum['ParentCategoryID'] == $Id) {
                    $this->WrapHTML($Datum);
                    //If it has child, find it's child, reiterate with current cat as the root.
                    if ($Datum['ChildIDs']) {
                        $this->Recurse($Data, $Datum['CategoryID']);
                    }
                }
            }
        }
        return;
    }

    public function WrapHTML($Datum) {

        $Text = '';

        $CssClasses = array(GetValue('Read', $Datum) ? 'Read' : 'Unread');
        if (GetValue('Archive', $Datum))
            $CssClasses[] = 'Archive';
        if (GetValue('Unfollow', $Datum))
            $CssClasses[] = 'Unfollow';
        $CssClasses = implode(' ', $CssClasses);
    

        if ($Datum['CategoryID'] != '0') {
            //  Get effective depth.
            $Depth = ((int) $Datum['Depth']) - $this->Initial_Depth;

            //  Root Category (current category)
            If ($Depth == 0) {
                //<div class="Tabs Headings CategoryHeadings">
                $Text = '<div class="Tabs Headings">
                            <div class="ItemHeading">'
                        . T($Datum['Name']) .
                        '</div>
                         </div>';
            }

            //Print <UL> to contain all descendants, only if it has a child
            If ($Depth == 0 && $Datum['ChildIDs']) {
                //$Text .= '<ul class="DataList CategoryList CategoryListWithHeadings">'
                $Text .= '<ul class="DataList CategoryList">';
            }
            
            // Descendant listing begin here
             
            // Don't uncomment commented codes.. it's for future works. 
            // 
            // Print descendants beyond nesting level that you set in Dashboard.
            // You know, the part where if it's beyond X level, it's gonna 
            // be printed in small text inside it's last allowed big-printed ancestor.
            /*
               If (($Depth > 0) && ($Depth < $this->MaxDisplayDepth) && ($Datum['ChildIDs'])) 
               {
                   $Text .= str_replace('{ChildCategories}', '<span class="ChildCategories">'.Wrap(T('Child Categories:'), 'b').' '.$ChildCategories.'</span>', $CatList);
                   $ChildCategories = '';
               }           
            */
            
            // Listing for first level descendant, this block applies only if you enable First Category as Header in the Dashboard
            // Which doesn't make sense in Subcategory view.
            // So I deactivate it
            // 
            /*
            // && $Datum['ChildIDs'] . $this->GetOptions($Datum, $this) .            
            if ($this->DoHeadings && $Depth == 1 ) {
                $Text .= '<li class="Item CategoryHeading Depth1 Category-' . $Datum['UrlCode'] . ' ' . $CssClasses . '">
                            <div class="ItemContent Category">' . Gdn_Format::Text($Datum['Name']) . '</div>
                            '.'
                         </li>';               
            }
            */
            
            
           
            if($Depth > 0){
                
                $LastComment = UserBuilder($Datum, 'LastComment');
                $AltCss = $Alt ? ' Alt' : '';
                $Alt = !$Alt;
                
                $Text .= '<li class="Item Depth'.$Depth.$AltCss.' Category-'.$Datum['UrlCode'].' '.$CssClasses.'">
                            <div class="ItemContent Category '.$CssClasses.'">'
                            .Anchor(Gdn_Format::Text($Datum['Name']), '/categories/'.$Datum['UrlCode'], 'Title')
                            .$this->GetOptions($Datum, $this->ColonelSender)
                            .Wrap($Datum['Description'], 'div', array('class' => 'CategoryDescription'))
                            .'<div class="Meta">
                             <span class="RSS">'.Anchor(Img('applications/dashboard/design/images/rss.gif'), '/categories/'.$Datum['UrlCode'].'/feed.rss').'</span>
                             <span class="DiscussionCount">'.sprintf(Plural(number_format($Datum['CountAllDiscussions']), '%s discussion', '%s discussions'), $Datum['CountDiscussions']).'</span>
                             <span class="CommentCount">'.sprintf(Plural(number_format($Datum['CountAllComments']), '%s comment', '%s comments'), $Datum['CountComments']).'</span>';
                     
                    if ($Datum['LastCommentID'] != '' && $Datum['LastDiscussionTitle'] != '') 
                     {
                        $Text .= '<span class="LastDiscussionTitle">'.sprintf(
                              T('Most recent: %1$s by %2$s'),
                              Anchor(SliceString($Datum['LastDiscussionTitle'], 40), '/discussion/'.$Datum['LastDiscussionID'].'/'.Gdn_Format::Url($Datum['LastDiscussionTitle'])),
                              UserAnchor($LastComment)
                           ).'</span>'
                           .'<span class="LastCommentDate">'.Gdn_Format::Date($Datum['DateLastComment']).'</span>';
                     }
                     
                     // If this category is one level above the max display depth, and it
                     // has children, add a replacement string for them.
                     /*
                     if ($MaxDisplayDepth > 0 && $Category->Depth == $MaxDisplayDepth - 1 && $Category->TreeRight - $Category->TreeLeft > 1)
                        $CatList .= '{ChildCategories}';
                     */   
                  $Text .= '</div>
               </div>
            </li>';
                
            }
            $this->HTML .= $Text;
        }
        return;
    }

    function GetOptions($Category, $Sender) {
        
        
        if (!Gdn::Session()->IsValid())
            return;

        $Result = '';
        $Options = '';
        $CategoryID = GetValue('CategoryID', $Category);

        $Result = '<div class="Options">';
        $TKey = urlencode(Gdn::Session()->TransientKey());

        // Mark category read.
        $Options .= '<li>'.Anchor(T('Mark Read'), "/vanilla/category/markread?categoryid=$CategoryID&tkey=$TKey").'</li>';
        

        if (GetValue('Unfollow', $Category))
            $Options .= '<li>'.Anchor(T('Follow'), "/vanilla/category/follow?categoryid=$CategoryID&value=1&tkey=$TKey").'</li>';
        else
            $Options .= '<li>'.Anchor(T('Unfollow'), "/vanilla/category/follow?categoryid=$CategoryID&value=0&tkey=$TKey").'</li>';

        // Allow plugins to add options
        $Sender->FireEvent('DiscussionOptions');

        if ($Options != '') {
            $Result .= '<div class="ToggleFlyout OptionsMenu"><div class="MenuTitle">'.T('Options').'</div>'
                .'<ul class="Flyout MenuItems">'.$Options.'</ul>'
                .'</div>';

        $Result .= '</div>';
        return $Result;
        }
        }
    


}
?>
