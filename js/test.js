<script type="text/javascript">

    document.write("        <table width='673' align='center' cellpadding='2' cellspacing='1'>");
document.write("            <tr>");
document.write("    <td valign = 'top'>");
document.write("                </td>");

document.write("            </tr>");

var cnt = 0;
for (var idx = 1; idx <= 30; idx++)
{
    cnt = cnt + 1;
    document.write("            <tr>");
    document.write("    <td valign = 'top'>");
    document.write("        <table width='100px' align='center' cellpadding='2' cellspacing='1'>");
    document.write("            <tr>");
    document.write("                <td align='center'>");
    document.write("                   " + idx + "");
    document.write("                </td>");
    document.write("            </tr>");
    document.write("            <tr>");
    document.write("                <td class='label'>");
    document.write("                    <span> name part : " + idx + "</span>");
    document.write("                </td>");
    document.write("            </tr>");
    document.write("            </table>");
    document.write("                </td>");
    if (cnt = 3)
    {
        document.write("            </tr>");
    }
    if (cnt = 3) {
        cnt = 0;
    }

}

document.write("            </table>");
</script>