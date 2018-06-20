UPDATE core_config_data SET value = 'http://local.magento' WHERE path IN ('web/secure/base_url', 'web/unsecure/base_url');

/** 
Cmmand to change Magento admin password:
    UPDATE admin_user SET `password` = CONCAT(SHA2('xxxxxxxxNEW_PASSWORD', 256), ':xxxxxxxx:1') WHERE `username` = 'ADMIN_USERNAME'; 
Where: 
    xxxxxxxx       : From the key indicated in \app\etc\env.php.
    ADMIN_USERNAME : Existing admin user in 'admin_user' table.
    NEW_PASSWORD   : Desired password which you want to be set
*/
UPDATE admin_user SET `password` = CONCAT(SHA2('bce04fca45f3fa54f9d91d7a671df9e2magento', 256), ':bce04fca45f3fa54f9d91d7a671df9e2:1') WHERE `username` = 'm2admin';
