#!/bin/bash

mkdir -p $1/src;

echo '<project name="java-ant project" default="run">  
	<property name="src.dir" value="src"/>
	<property name="build.dir" value="build"/>
	<property name="classes.dir" value="${build.dir}/classes/"/>

	<path id="run.classpath">
		<!--
		<fileset dir="${classes.dir}">
			<include name="/*.class"/>

		</fileset>
		-->

		<pathelement location="${classes.dir}"></pathelement>

	</path>
	<target name="compile">
		<mkdir dir="build/classes"/>
		<javac srcdir="src" destdir="build/classes"/>
	</target>
	<target name="run" depends="compile">
		<java classname="'"$2"'" classpathref="run.classpath" fork="true">
			<!--<classpath refid="classpath"/>-->
		</java>
	</target>
</project>' > $1/build.xml;
