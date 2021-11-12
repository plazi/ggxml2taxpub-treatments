<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://www.ascc.net/xml/schematron">
    <pattern name="treatment">
        <!-- Change the attribute to point the element being the context of the assert expression. -->
        <rule context="treatment">
            <!-- nested treatments -->
            <report test="descendant::treatment">Error: A treatment must not have a descendant treatment.</report>
        </rule>
    </pattern>
</schema>