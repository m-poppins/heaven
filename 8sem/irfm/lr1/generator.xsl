<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match = "/">
     <html>
       <head>
         <title>Генерация SQL для файла specialities.xml</title>
       </head>
       <body>

         <h2> Создание последовательности </h2>
         <br/>create sequence spec_sec start with 1 increment by 1 order;
         <br/>
         <h2> Создание таблицы </h2><br/>create table specialities(
         <br/>"id" number(38) primary key,
         <br/>"name" varchar2(102 char) not null,
         <br/>code varchar2(8 char),
         <br/>level varchar2(12 char) CHECK(level IN('Специалитет','Магистратура','Бакалавриат','Аспирантура')),
         <br/>levelid number(38) CHECK(level-id IN('1','2','0','3')) ,
         <br/>generation varchar2(6 char) not null,
         <br/>generationid number(38) not null,
         <br/>type varchar2(13 char) not null,
         <br/>typeid number(38) CHECK(type-id IN('1','0')) );
         <br/>



         <h1>
           Генерация SQL для файла specialities.xml
         </h1>
      <!--   INSERT ALL<br/> -->
         <xsl:for-each select = "objects/object">
           INSERT INTO specialities(id,name,code,level,levelid,generation,generationid,type,typeid) VALUES(spec_sec.nextval,
           '<xsl:value-of select = "name"/>',
           '<xsl:value-of select = "code"/>',
           '<xsl:value-of select = "level"/>',
           <xsl:value-of select = "level-id"/>,
           '<xsl:value-of select = "generation"/>',
           <xsl:value-of select = "generation-id"/>,
           '<xsl:value-of select = "type"/>',
           <xsl:value-of select = "type-id"/>);
           <br/>
         </xsl:for-each>
         <!-- select 1 from dual; -->
       </body>
     </html>
   </xsl:template>
 </xsl:stylesheet>
