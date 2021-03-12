<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">
<html>
  <head>
    <title>Анализ данных файла specialities.xml </title>
  </head>
  <body>
    <h1>
      Анализ данных файла specialities.xml
    </h1>
    <h2>
      Анализ поля id
    </h2>
    Тип данных: <xsl:if test="//id/@type"><xsl:value-of select= "//id/@type"/></xsl:if>
    <xsl:if test="not(//id/@type)">Текст</xsl:if>
    <xsl:if test= "not(//id/@type)">
      <br/>
      <xsl:for-each select = "objects/object">
        <xsl:sort select = "string-length(id/text())" order = "descending" data-type = "number"/>
        <xsl:if test="position()=1">
          Самый длинный элемент: <xsl:value-of select = "id/text()"/>, длина:
          <xsl:value-of select = "string-length(id/text())"/>
          <br/>
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
    <br/>
    Число пустых: <xsl:value-of select = "count(objects/object/id[string-length(./text())=0])"/>
    <br/>
    <xsl:if test = "count(objects/object/id[not(text()=preceding::id)]) &lt; 5 and count(objects/object/id[not(text()=preceding::id)]) &gt; 2">
      Нужен:
      CHECK(id IN(<xsl:for-each select = "objects/object/id[not(text()=preceding::id)]">'<xsl:value-of select = "./text()"/>'<xsl:if test="not(last()=position())">,</xsl:if></xsl:for-each>))
    </xsl:if>
    <h2>
      Анализ поля name
    </h2>
    Тип данных: <xsl:if test="//name/@type"><xsl:value-of select= "//name/@type"/></xsl:if>
    <xsl:if test="not(//name/@type)">Текст</xsl:if>
    <xsl:if test= "not(//name/@type)">
      <br/>
      <xsl:for-each select = "objects/object">
        <xsl:sort select = "string-length(name/text())" order = "descending" data-type = "number"/>
        <xsl:if test="position()=1">
          Самый длинный элемент: <xsl:value-of select = "name/text()"/><br/> Длина:
          <xsl:value-of select = "string-length(name/text())"/>
          <br/>
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
    <br/>
    Число пустых: <xsl:value-of select = "count(objects/object/name[string-length(./text())=0])"/>
    <br/>
    <xsl:if test = "count(objects/object/name[not(text()=preceding::name)]) &lt; 5 and count(objects/object/name[not(text()=preceding::name)]) &gt; 2">
      Нужен:
      CHECK(name IN(<xsl:for-each select = "objects/object/name[not(text()=preceding::name)]">'<xsl:value-of select = "./text()"/>'<xsl:if test="not(last()=position())">,</xsl:if></xsl:for-each>))
    </xsl:if>
    <h2>
      Анализ поля code
    </h2>
    Тип данных: <xsl:if test="//code/@type"><xsl:value-of select= "//code/@type"/></xsl:if>
    <xsl:if test="not(//code/@type)">Текст</xsl:if>
    <xsl:if test= "not(//code/@type)">
      <br/>
      <xsl:for-each select = "objects/object">
        <xsl:sort select = "string-length(code/text())" order = "descending" data-type = "number"/>
        <xsl:if test="position()=1">
          Самый длинный элемент: <xsl:value-of select = "code/text()"/><br/> Длина:
          <xsl:value-of select = "string-length(code/text())"/>
          <br/>
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
    <br/>
    Число пустых: <xsl:value-of select = "count(objects/object/code[string-length(./text())=0])"/>
    <br/>
    <xsl:if test = "count(objects/object/code[not(text()=preceding::code)]) &lt; 5 and count(objects/object/code[not(text()=preceding::code)]) &gt; 2">
      Нужен:
      CHECK(code IN(<xsl:for-each select = "objects/object/code[not(text()=preceding::code)]">'<xsl:value-of select = "./text()"/>'<xsl:if test="not(last()=position())">,</xsl:if></xsl:for-each>))
    </xsl:if>
    <h2>
      Анализ поля level
    </h2>
    Тип данных: <xsl:if test="//level/@type"><xsl:value-of select= "//level/@type"/></xsl:if>
    <xsl:if test="not(//level/@type)">Текст</xsl:if>
    <xsl:if test= "not(//level/@type)">
      <br/>
      <xsl:for-each select = "objects/object">
        <xsl:sort select = "string-length(level/text())" order = "descending" data-type = "number"/>
        <xsl:if test="position()=1">
          Самый длинный элемент: <xsl:value-of select = "level/text()"/><br/> Длина:
          <xsl:value-of select = "string-length(level/text())"/>
          <br/>
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
    <br/>
    Число пустых: <xsl:value-of select = "count(objects/object/level[string-length(./text())=0])"/>
    <br/>
    <xsl:if test = "count(objects/object/level[not(text()=preceding::level)]) &lt; 5 and count(objects/object/level[not(text()=preceding::level)]) &gt; 2">
      Нужен:
      CHECK(level IN(<xsl:for-each select = "objects/object/level[not(text()=preceding::level)]">'<xsl:value-of select = "./text()"/>'<xsl:if test="not(last()=position())">,</xsl:if></xsl:for-each>))
    </xsl:if>
    <h2>
      Анализ поля level-id
    </h2>
    Тип данных: <xsl:if test="//level-id/@type"><xsl:value-of select= "//level-id/@type"/></xsl:if>
    <xsl:if test="not(//level-id/@type)">Текст</xsl:if>
    <xsl:if test= "not(//level-id/@type)">
      <br/>
      <xsl:for-each select = "objects/object">
        <xsl:sort select = "string-length(level-id/text())" order = "descending" data-type = "number"/>
        <xsl:if test="position()=1">
          Самый длинный элемент: <xsl:value-of select = "level-id/text()"/><br/> Длина:
          <xsl:value-of select = "string-length(level-id/text())"/>
          <br/>
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
    <br/>
    Число пустых: <xsl:value-of select = "count(objects/object/level-id[string-length(./text())=0])"/>
    <br/>
    <xsl:if test = "count(objects/object/level-id[not(text()=preceding::level-id)]) &lt; 5 and count(objects/object/level-id[not(text()=preceding::level-id)]) &gt; 2">
      Нужен:
      CHECK(level-id IN(<xsl:for-each select = "objects/object/level-id[not(text()=preceding::level-id)]">'<xsl:value-of select = "./text()"/>'<xsl:if test="not(last()=position())">,</xsl:if></xsl:for-each>))
    </xsl:if>
    <h2>
      Анализ поля generation
    </h2>
    Тип данных: <xsl:if test="//generation/@type"><xsl:value-of select= "//generation/@type"/></xsl:if>
    <xsl:if test="not(//generation/@type)">Текст</xsl:if>
    <xsl:if test= "not(//generation/@type)">
      <br/>
      <xsl:for-each select = "objects/object">
        <xsl:sort select = "string-length(generation/text())" order = "descending" data-type = "number"/>
        <xsl:if test="position()=1">
          Самый длинный элемент: <xsl:value-of select = "generation/text()"/><br/> Длина:
          <xsl:value-of select = "string-length(generation/text())"/>
          <br/>
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
    <br/>
    Число пустых: <xsl:value-of select = "count(objects/object/generation[string-length(./text())=0])"/>
    <br/>
    <xsl:if test = "count(objects/object/generation[not(text()=preceding::generation)]) &lt; 5 and count(objects/object/generation[not(text()=preceding::generation)]) &gt; 2">
      Нужен:
      CHECK(generation IN(<xsl:for-each select = "objects/object/generation[not(text()=preceding::generation)]">'<xsl:value-of select = "./text()"/>'<xsl:if test="not(last()=position())">,</xsl:if></xsl:for-each>))
    </xsl:if>
    <h2>
      Анализ поля generation-id
    </h2>
    Тип данных: <xsl:if test="//generation-id/@type"><xsl:value-of select= "//generation-id/@type"/></xsl:if>
    <xsl:if test="not(//generation-id/@type)">Текст</xsl:if>
    <xsl:if test= "not(//generation-id/@type)">
      <br/>
      <xsl:for-each select = "objects/object">
        <xsl:sort select = "string-length(generation-id/text())" order = "descending" data-type = "number"/>
        <xsl:if test="position()=1">
          Самый длинный элемент: <xsl:value-of select = "generation-id/text()"/><br/> Длина:
          <xsl:value-of select = "string-length(generation-id/text())"/>
          <br/>
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
    <br/>
    Число пустых: <xsl:value-of select = "count(objects/object/generation-id[string-length(./text())=0])"/>
    <br/>
    <xsl:if test = "count(objects/object/generation-id[not(text()=preceding::generation-id)]) &lt; 5 and count(objects/object/generation-id[not(text()=preceding::generation-id)]) &gt; 2">
      Нужен:
      CHECK(generation-id IN(<xsl:for-each select = "objects/object/generation-id[not(text()=preceding::generationid)]">'<xsl:value-of select = "./text()"/>'<xsl:if test="not(last()=position())">,</xsl:if></xsl:for-each>))
    </xsl:if>
    <h2>
      Анализ поля type
    </h2>
    Тип данных: <xsl:if test="//type/@type"><xsl:value-of select= "//type/@type"/></xsl:if>
    <xsl:if test="not(//type/@type)">Текст</xsl:if>
    <xsl:if test= "not(//type/@type)">
      <br/>
      <xsl:for-each select = "objects/object">
        <xsl:sort select = "string-length(type/text())" order = "descending" data-type = "number"/>
        <xsl:if test="position()=1">
          Самый длинный элемент: <xsl:value-of select = "type/text()"/><br/> Длина:
          <xsl:value-of select = "string-length(type/text())"/>
          <br/>
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
    <br/>
    Число пустых: <xsl:value-of select = "count(objects/object/type[string-length(./text())=0])"/>
    <br/>
    <xsl:if test = "count(objects/object/type[not(text()=preceding::type)]) &lt; 5 and count(objects/object/type[not(text()=preceding::type)]) &gt; 2">
      Нужен:
      CHECK(type IN(<xsl:for-each select = "objects/object/type[not(text()=preceding::type)]">'<xsl:value-of select = "./text()"/>'<xsl:if test="not(last()=position())">,</xsl:if></xsl:for-each>))
    </xsl:if>
    <h2>
      Анализ поля type-id
    </h2>
    Тип данных: <xsl:if test="//type-id/@type"><xsl:value-of select= "//type-id/@type"/></xsl:if>
    <xsl:if test="not(//type-id/@type)">Текст</xsl:if>
    <xsl:if test= "not(//type-id/@type)">
      <br/>
      <xsl:for-each select = "objects/object">
        <xsl:sort select = "string-length(type-id/text())" order = "descending" data-type = "number"/>
        <xsl:if test="position()=1">
          Самый длинный элемент: <xsl:value-of select = "type-id/text()"/><br/> Длина:
          <xsl:value-of select = "string-length(type-id/text())"/>
          <br/>
        </xsl:if>
      </xsl:for-each>
    </xsl:if>
    <br/>
    Число пустых: <xsl:value-of select = "count(objects/object/type-id[string-length(./text())=0])"/>
    <br/>
    <xsl:if test = "count(objects/object/type-id[not(text()=preceding::type-id)]) &lt; 6 and count(objects/object/type-id[not(text()=preceding::type-id)]) &gt; 1">
      Нужен:
      CHECK(type-id IN(<xsl:for-each select = "objects/object/type-id[not(text()=preceding::type-id)]">'<xsl:value-of select = "./text()"/>'<xsl:if test="not(last()=position())">,</xsl:if></xsl:for-each>))
    </xsl:if>
  </body>
  </html>
  </xsl:template>
  </xsl:stylesheet>
