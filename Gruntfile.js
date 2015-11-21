module.exports = function(grunt) {

  grunt.initConfig({
    includeSource: {
      options: {
        basePath: '',
        baseUrl: ''
      },
      myTarget: {
        files: {
          'public/main.html': 'public/index.tpl.html'
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-include-source');

  grunt.registerTask('default', 'default task description', function(){
    console.log('hello world');
  });

  grunt.registerTask('doIncludes', ['includeSource']);

};
