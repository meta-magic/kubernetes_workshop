// Keep this file under src/main/scripts and name it as BuildDockerfile.groovy
String template = new File("${project.basedir}/src/main/docker/Dockerfile".toString()).getText()

def dockerFileText = new groovy.text.SimpleTemplateEngine().createTemplate(template)
        .make([fileName: project.build.finalName])

println "writing dir " + "${project.basedir}/target/dockerfile"
new File("${project.basedir}/target/dockerfile/".toString()).mkdirs()

println "writing file"
File dockerFile = new File("${project.basedir}/target/dockerfile/Dockerfile".toString())

dockerFile.withWriter('UTF-8') { writer ->
    writer.write(dockerFileText)
}