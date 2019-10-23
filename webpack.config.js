let path = require('path');
let MiniCssExtractPlugin = require('mini-css-extract-plugin');
let VueLoaderPlugin = require('vue-loader/lib/plugin');

module.exports = {
    entry: {
        app:'./src/main/webapp/app.js'
    },
    output: {
        path: path.join(__dirname, 'grails-app/assets/javascripts'),
        publicPath: '/assets/',
        filename: 'bundle-[name].js'
    },
    plugins: [
        new MiniCssExtractPlugin({
            // Options similar to the same options in webpackOptions.output
            // all options are optional
            filename: '../stylesheets/bundle-[name].css',
            chunkFilename: '../stylesheets/[id].css',
            ignoreOrder: false, // Enable to remove warnings about conflicting order
        }),
        new VueLoaderPlugin()
    ],
    module: {
        rules: [
            {
                test: /\.js$/,
                exclude: /node_modules/,
                loader: "babel-loader"
            },
            {
                test: /\.s[ac]ss$/i,
                use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader',],
            },
            {
                test: /\.css$/,
                loader: 'css-loader'
            },
            {
                test: /\.vue$/,
                loader: 'vue-loader'
            }
        ]
    },
    resolve: {
        extensions: ['.sass', '.scss', '.js', '.vue']
    },
};
