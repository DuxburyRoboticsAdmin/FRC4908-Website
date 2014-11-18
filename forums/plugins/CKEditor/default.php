<?php if(!defined('APPLICATION')) die();

// CKEditor plugin for Vanilla Forums

$PluginInfo['CKEditor'] = array(
   'Name' => 'Vanilla CKEditor',
   'Description' => 'CKEditor for Vanilla',
   'Version' => '0.1',
   'Author' => "somewhatparanoid",
   'AuthorEmail' => 'somewhat.paranoid@hotmail.com',
   'AuthorUrl' => '',
   'RequiredApplications' => array('Vanilla' => '>=2')
);

class CKEditor extends Gdn_Plugin {
	
	private $path;
	
	public function __construct()
	{
		$this->path = Gdn::Request()->Url('plugins/CKEditor');
	}
	
	public function Base_Render_Before(&$Sender)
	{		
		$Sender->AddJSFile('plugins/CKEditor/ckeditor.js');
		$Sender->AddJSFile('plugins/CKEditor/adapters/jquery.js');
		$Sender->Head->AddString(<<<EOF
			<script type="text/javascript">
				$().ready(function() {
					$('#Form_Body').ckeditor();
				});
			</script>
EOF
);
	}
	
	public function Setup(){}
}