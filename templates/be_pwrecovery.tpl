<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>">
<head>
<base href="<?php echo $this->base; ?>"></base>
<title><?php echo $this->title; ?> :: Contao Open Source CMS <?php echo VERSION; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $this->charset; ?>" />
<link rel="stylesheet" type="text/css" href="system/themes/<?php echo $this->theme; ?>/basic.css" media="screen" />
<link rel="stylesheet" type="text/css" href="system/themes/<?php echo $this->theme; ?>/login.css" media="screen" />
<?php if ($this->isMac): ?>
<link type="text/css" rel="stylesheet" href="system/themes/<?php echo $this->theme; ?>/macfixes.css" media="screen" />
<?php endif; ?>
<!--[if lte IE 7]><link type="text/css" rel="stylesheet" href="system/themes/<?php echo $this->theme; ?>/iefixes.css" media="screen" /><![endif]-->
<!--[if IE 8]><link type="text/css" rel="stylesheet" href="system/themes/<?php echo $this->theme; ?>/ie8fixes.css" media="screen" /><![endif]-->
<script type="text/javascript" src="plugins/mootools/mootools-core.js"></script>
<script type="text/javascript" src="plugins/mootools/mootools-more.js"></script>
</head>
<body>

<div id="header">
<h1>Contao Open Source CMS <?php echo VERSION; ?></h1>
</div>

<div id="container">

<div id="main">

<h2><?php echo $this->headline; ?></h2>

<form action="<?php echo $this->action; ?>" class="tl_login_form" method="post">
<div class="formbody">
<input type="hidden" name="FORM_SUBMIT" value="tl_login" /><?php echo $this->messages; ?> 

<table cellpadding="0" cellspacing="0" class="tl_login_table" summary="Input fields">
  <tr>
    <td<?php echo $this->uClass; ?>><label for="username"><?php echo $this->username; ?></label></td>
    <td align="right"><input type="text" name="username" id="username" class="tl_text" value="<?php echo $this->curUsername; ?>" maxlength="64" /></td>
  </tr>
  <tr>
    <td<?php echo $this->eClass; ?>><label for="email"><?php echo $this->email; ?></label></td>
    <td align="right"><input type="text" name="email" id="email" class="tl_text" value="<?php echo $this->curEmail; ?>" /></td>
  </tr>
</table>

<div class="tl_login_submit_container">
<input type="submit" name="recover" id="recover" alt="recover button" value="<?php echo $this->recoverButton; ?>" />
</div>

</div>
</form>

<div id="tl_license">

<p>Contao Open Source CMS (fka TYPOlight) :: Copyright ©2005-<?php echo date('Y'); ?> by Leo Feyer :: Extensions are
  copyright of their respective owners :: Visit <a href="http://www.contao.org" onclick="window.open(this.href); return false;">contao.org</a>
  for more information :: Obstructing the appearance of this notice is prohibited by law!</p>

<p>Contao is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY :: Without even the
  implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE :: See the GNU Lesser General Public
  License for more details :: Contao is free software :: You can redistribute it and/or modify it under the
  terms of the GNU Lesser General Public License (LGPL) as published by the Free Software Foundation.</p>

</div>

<p id="go_to_frontend"><a href="contao/index.php" title="<?php echo $this->beLogin; ?>"><?php echo $this->beLogin; ?></a></p>

</div>

<!-- indexer::stop -->
<img src="<?php echo $this->base; ?>cron.php" alt="" class="invisible" />
<!-- indexer::continue -->

</div>

<script type="text/javascript">
<!--//--><![CDATA[//><!--
window.addEvent('domready', function()
{
	$('email').focus();

	if (parent.frames[0] && parent.frames[0].name == 'switch')
	{
		parent.location.reload();
	}
});
//--><!]]>
</script>

</body>
</html>