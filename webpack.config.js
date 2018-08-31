const path = require('path')

const VueLoaderPlugin = require('vue-loader/lib/plugin')

module.exports = {
	entry: './src/js/index.js',
	output: {
		filename: 'bundle.js',
		path: path.resolve(__dirname, 'public/js')
	},
	module: {
		rules: [{
			test: /\.vue$/,
			loader: 'vue-loader'
		},
		{
			test: /\.js$/,
			loader: 'babel-loader',
			exclude: /node_modules/,
		},
		{
			test: /\.css$/,
			use: [ 'style-loader', 'css-loader' ]
		}]
	},
	resolve: {
		alias: {
			vue$: 'vue/dist/vue.esm.js'
		},
		extensions: ['*', '.js', '.vue', '.json']
	},
	plugins: [
		new VueLoaderPlugin()
	]
}