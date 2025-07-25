allprojects {
  repositories {
        maven { url 'https://maven.aliyun.com/repository/google' }       // 替代 google()
        maven { url 'https://maven.aliyun.com/repository/central' }      // 替代 mavenCentral()
        maven { url 'https://maven.aliyun.com/repository/public' }       // 通用开源包
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
