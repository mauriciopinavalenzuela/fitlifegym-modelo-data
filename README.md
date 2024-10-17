# Instalación y Configuración de SQL Developer y SQL Data Modeler

Este documento detalla los pasos para instalar Oracle SQL Developer, SQL Data Modeler, y cómo conectarse a una base de datos utilizando un archivo Wallet para ejecutar consultas y revisar el modelo de datos.

## Requisitos Previos

- **Oracle SQL Developer**: Para ejecutar consultas SQL.
- **Oracle SQL Data Modeler**: Para revisar el modelo de datos ya creado.
- **Wallet_Evaluacion**: Un archivo `.zip` que contiene las credenciales seguras de conexión para la base de datos.

## 1. Instalación de SQL Developer

1. Descargue **Oracle SQL Developer** desde [Oracle SQL Developer](https://www.oracle.com/database/sqldeveloper/technologies/download/).
2. Siga las instrucciones de instalación según su sistema operativo (Windows, Mac, Linux).
3. Abra SQL Developer una vez que haya completado la instalación.

## 2. Instalación de SQL Data Modeler

1. Descargue **Oracle SQL Data Modeler** desde [Oracle Data Modeler](https://www.oracle.com/database/sqldeveloper/technologies/sql-data-modeler/download/).
2. Instale el software siguiendo las instrucciones para su sistema operativo.
3. Abra SQL Data Modeler para comenzar a cargar los modelos de datos.

## 3. Configuración de la Conexión con el Wallet

El archivo Wallet_Evaluacion proporcionado se utiliza para conectar de manera segura a la base de datos en la nube.

### Paso 1: Obtener el Wallet

1. Descargue el archivo Wallet_Evaluacion proporcionado, normalmente en formato `.zip` (por ejemplo, `Wallet_Evaluacion.zip`).
2. Extraiga el contenido del archivo `.zip` en una carpeta segura de su computadora.

### Paso 2: Configuración de la Conexión en SQL Developer

1. Abra **SQL Developer**.
2. Haga clic en el botón **Nueva Conexión** (icono de + verde) o vaya a `Archivo > Nuevo... > General > Conexión > Conexión a Base de Datos`.
3. Complete los campos como se muestra a continuación:
    - **Nombre de Conexión**: `Evaluacion`.
    - **Usuario**: `ADMIN`.
    - **Contraseña**: `The_foreigner40`.
    - **Tipo de Conexión**: Seleccione **Cartera de Cloud** (Cloud Wallet).
    - **Archivo de Configuración**: Seleccione la carpeta donde descomprimió el archivo Wallet.
    - **Servicio**: Seleccione `evaluacion_medium` de la lista desplegable (o el servicio adecuado).
4. Haga clic en **Probar** para verificar la conexión.
5. Si la prueba es exitosa, haga clic en **Conectar**.

![Captura de Pantalla](https://github.com/mauriciopinavalenzuela/Evaluacion-Modelado-de-Datos/blob/main/Captura%20de%20pantalla%202024-10-17%200091704.png)

![Captura de Pantalla](https://github.com/mauriciopinavalenzuela/Evaluacion-Modelado-de-Datos/blob/main/Captura%20de%20pantalla%202024-10-17%200091742.png)

### Paso 3: Ejecutar Script's SQL

1. Una vez conectado, vaya a la sección de **Consultas SQL** en SQL Developer.
2. Cargue los archivos `.sql` que desea ejecutar haciendo clic en `Archivo > Abrir`, navegando hasta los archivos `.sql` proporcionados.
3. Seleccione el archivo `05-estructura-sql` , `06-datos.sql` y haga clic en **Ejecutar Script** (icono de "play" verde con el documento atrás), para correr `07-consultas.sql` sobre la base de datos haga clic en **Sentencia de Ejecución** (icono de "play" verde grande).

## 4. Cargar Modelos en SQL Data Modeler

1. Abra **Oracle SQL Data Modeler**.
2. Para cargar un modelo existente:
    - Vaya a `Archivo > Abrir`.
    - Navegue hasta la ubicación del archivo del modelo de datos `01-diagrama-conceptual-fuente.dmd` , `03-diagrama-mer-fuente.dmd`.
    - Seleccione el archivo y haga clic en **Abrir**.
3. Revise el modelo visualmente en SQL Data Modeler. Aquí podrá ver las entidades, relaciones y otros componentes del diseño de la base de datos.

## 5. Solución de Problemas

### Error de Conexión
- Si no puede conectarse a la base de datos, verifique que la contraseña ingresada sea correcta (`The_foreigner40`) y que el archivo Wallet esté correctamente configurado.
- Asegúrese de que la carpeta donde descomprimió el Wallet esté correctamente referenciada en la configuración de la conexión.

### Problemas al cargar modelos en SQL Data Modeler
- Asegúrese de que el archivo del modelo (.dmd) esté completo y no esté dañado.
- Verifique que la versión de SQL Data Modeler sea compatible con los archivos del modelo.

---

Si necesita asistencia adicional, no dude en contactarme mediante U-cursos.
