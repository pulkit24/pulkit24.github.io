module.exports = function(grunt) {

	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json')
		, config: {
			css: {
				src: "styles.less"
				, dist: "styles.css"
			}
			, js: {
				src: "app.coffee"
				, dist: "app.js"
			}
			, html: {
				src: "index.jade"
				, dist: "index.html"
			}
		}
		, clean: {
			css: "<%= config.css.dist %>"
			, js: "<%= config.js.dist %>"
			, html: "<%= config.html.dist %>"
		}
		, less: {
			compile: {
				files: {
					"<%= config.css.dist %>" : "<%= config.css.src %>"
				}
			}
		}
		, coffee: {
			compile: {
				files: {
					"<%= config.js.dist %>" : "<%= config.js.src %>"
				}
			}
		}
		, jade: {
			compile: {
				files: {
					"<%= config.html.dist %>" : "<%= config.html.src %>"
				}
			}
		}
		, watch: {
			css: {
				files: "<%= config.css.src %>"
				, tasks: ["clean:css", "less"]
			}
			, js: {
				files: "<%= config.js.src %>"
				, tasks: ["clean:js", "coffee"]
			}
			, html: {
				files: "<%= config.html.src %>"
				, tasks: ["clean:html", "jade"]
			}
		}
	});

	grunt.loadNpmTasks('grunt-contrib-clean');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.loadNpmTasks('grunt-contrib-less');
	grunt.loadNpmTasks('grunt-contrib-jade');
	grunt.loadNpmTasks('grunt-contrib-coffee');

	grunt.registerTask('default', ["clean", "less", "coffee", "jade"]);
};
