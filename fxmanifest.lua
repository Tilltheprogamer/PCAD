fx_version 'cerulean'
game 'gta5'

author 'Tilltheprogamer'
description 'Police CAD on Google Docs in game!'
version '1.1.1'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

shared_script{
    "config.lua"
}

client_script {
    "client/main.lua",
    "client/debug.lua"
}

server_script {
    "server/main.lua"
}
