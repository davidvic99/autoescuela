<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/admin/cabecera.jsp?op=preguntas"/>
<!-- container -->
<div class="row">

    <jsp:include page="/WEB-INF/admin/preguntas/menu.jsp?op=new"/>

    <div class="span9 centro">
        <section>
            <div class="page-header">
                <h1>Nueva pregunta</h1>
            </div>
            <c:if test="${noCreada == 'true'}">
                <div class="alert alert-error">
                    La pregunta no ha sido creada. Intentelo de nuevo.
                </div>
            </c:if>
            <form class="form-horizontal" method="post">
                <div class="control-group margin-bottom-10">
                    <label class="control-label" for=">">Enunciado</label>
                    <div class="controls">
                        <textarea rows="3" class="span5" name="enunciado" id="areaEnunciado" placeholder="Escriba el enunciado de la pregunta"></textarea>
                    </div>
                    <label class="control-label" for="areaRespuesta1">Respuesta 1</label>
                    <div class="controls">
                        <textarea rows="3" class="span5" name="respuesta1" id="areaRespuesta1" placeholder="Escriba una respuesta"></textarea>
                    </div>
                    <label class="control-label" for="areaRespuesta2">Respuesta 2</label>
                    <div class="controls">
                        <textarea rows="3" class="span5" name="respuesta2" id="areaRespuesta2" placeholder="Escriba una respuesta"></textarea>
                    </div>
                    <label class="control-label" for="areaRespuesta3">Respuesta 3</label>
                    <div class="controls">
                        <textarea rows="3" class="span5" name="respuesta3" id="areaRespuesta3" placeholder="Escriba una respuesta"></textarea>
                    </div>
                    <label class="control-label">Respuesta correcta</label>
                    <div class="controls">
                        <label for="radioRespuesta1" class="radio">Respuesta 1<input type="radio" id="radioRespuesta1" name="radioRespuesta"/></label>
                        <label for="radioRespuesta2" class="radio">Respuesta 2<input type="radio" id="radioRespuesta2" name="radioRespuesta"/></label>
                        <label for="radioRespuesta3" class="radio">Respuesta 3<input type="radio" id="radioRespuesta3" name="radioRespuesta"/></label>
                    </div>
                    <label class="control-label" for="inputTema">Tema</label>
                    <div class="controls">
                        <input class="span5" type="text" id="inputTema" name="tema" placeholder="Escriba el tema de la pregunta" />
                    </div>
                    <label class="control-label" for="inputImagen">Imagen</label>
                    <div class="controls">
                        Under construction...
                    </div>
                </div>

                <div class="form-actions">
                    <button type="submit" name="crear" class="btn btn-primary">Crear pregunta</button>
                    <button type="reset" class="btn">Limpiar</button>
                </div>

            </form>

        </section>
    </div>
</div>
<!-- container -->

<jsp:include page="/WEB-INF/admin/pie.jsp"/>