<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match = "/">
     <html>
       <head>
         <title>Генерация SQL для файла specialities.xml</title>
       </head>
       <body>
         <h1>
           Генерация SQL для файла specialities.xml
         </h1>
         INSERT ALL<br/>
         <xsl:for-each select = "objects/object">
           INTO specialities(id,name,code,lev,level_id,generation,generation_id,type,type_id) VALUES(spec_sec.nextval,
           '<xsl:value-of select = "name"/>',
           '<xsl:value-of select = "code"/>',
           '<xsl:value-of select = "level"/>',
           <xsl:value-of select = "level-id"/>,
           '<xsl:value-of select = "generation"/>',
           <xsl:value-of select = "generation-id"/>,
           '<xsl:value-of select = "type"/>',
           <xsl:value-of select = "type-id"/>)
           <br/>
         </xsl:for-each>
         select 1 from dual;
       </body>
     </html>
   </xsl:template>
 </xsl:stylesheet>
