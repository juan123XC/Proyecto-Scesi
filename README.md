# Proyecto Red Team: Evaluación de Reverse Shells en Entornos Windows

## Descripción General del Proyecto

Este proyecto se enfoca en la investigación y el desarrollo de **reverse shells** implementadas en **PowerShell y Python**, con el objetivo principal de evaluar su efectividad y limitaciones frente a los mecanismos de protección del sistema operativo **Windows**, específicamente **Windows Defender y AMSI (Antimalware Scan Interface)**.

Las operaciones de **Red Teaming** son esenciales en la ciberseguridad ofensiva, simulando ataques reales para identificar y mitigar vulnerabilidades en las infraestructuras tecnológicas. Este estudio contribuye a una comprensión más profunda de cómo las herramientas ofensivas básicas interactúan con las defensas modernas y subraya la necesidad de técnicas de evasión más sofisticadas en un entorno de amenazas en constante evolución.

## Objetivos del Proyecto

* **Objetivo General:** Crear e implementar reverse shells básicas en PowerShell y Python para analizar su funcionamiento en entornos Windows, evaluando su efectividad y limitaciones frente a los mecanismos de protección de Windows Defender.
* **Objetivos Específicos:**
    * Evaluar la ejecución y el comportamiento de las reverse shells en diferentes entornos Windows (Windows 8.1, 10 y 11), tanto en máquinas virtuales como físicas.
    * Observar y registrar la respuesta de Windows Defender (incluyendo AMSI) ante la ejecución de estos scripts, documentando la frecuencia de detección y eliminación.
    * Analizar los resultados para identificar las limitaciones inherentes de estas herramientas básicas frente a las defensas modernas.
    * Proponer recomendaciones sobre técnicas avanzadas de evasión necesarias para futuras pruebas de penetración.

## Metodología

El proyecto incluyó las siguientes fases adaptadas para este estudio:

1.  **Preparación del Entorno:** Configuración de máquinas virtuales y físicas con Windows 8.1, Windows 10 LTS y Windows 11 para simular diversos escenarios de prueba.
2.  **Desarrollo de Reverse Shells:** Implementación de scripts de reverse shell en PowerShell y Python, empaquetados en archivos ejecutables para su distribución.
3.  **Ejecución y Acceso Inicial:** Ejecución de las reverse shells en los sistemas objetivo y establecimiento de conexiones remotas con el "atacante" (listener).
4.  **Análisis de Resultados:** Documentación y comparación de la efectividad de las shells y la respuesta de Windows Defender en distintas configuraciones.

Para una descripción detallada de la metodología, implementación y resultados, consulte el documento completo del proyecto.

## Resultados Clave

* Las **reverse shells en PowerShell** demostraron una **mayor tasa de evasión** de detección por parte de Windows Defender en comparación con las de Python, especialmente en entornos menos protegidos como Windows 8.1.
* **Windows Defender con AMSI** representó un desafío significativo, detectando y bloqueando la mayoría de las variantes básicas y los intentos de evasión simples (como bypasses y payloads ofuscados).
* Se confirmó la necesidad de desarrollar **métodos más sofisticados de evasión** para mantener la efectividad en ejercicios de Red Teaming modernos.

## Conclusiones y Recomendaciones

La investigación destaca la importancia de la innovación continua en técnicas de ciberseguridad ofensiva debido a la evolución constante de las defensas. Se recomienda:

* Investigar y desarrollar técnicas avanzadas de ofuscación de código y payloads más sofisticados.
* Participar en capacitación continua sobre técnicas de evasión y análisis de malware.
* Realizar pruebas de penetración regulares utilizando diversas técnicas y herramientas para evaluar la efectividad de las defensas en evolución y ajustar las estrategias de ataque en consecuencia.
* Mantener una documentación detallada de los resultados de las pruebas y análisis de comportamiento de las herramientas utilizadas, lo que puede servir como referencia para futuras investigaciones y desarrollos en ciberseguridad ofensiva.

Para obtener un análisis completo de las conclusiones y recomendaciones, consulte el documento del proyecto.

## Advertencia / Descargo de Responsabilidad

**Este repositorio contiene material relacionado con la ciberseguridad ofensiva y se presenta EXCLUSIVAMENTE con fines EDUCATIVOS y de INVESTIGACIÓN, dentro del contexto de las operaciones éticas de Red Teaming.**

**El contenido aquí expuesto no debe ser utilizado para actividades ilegales o maliciosas. El uso de la información o de cualquier script derivado de este proyecto para fines no autorizados es estrictamente prohibido y bajo la exclusiva responsabilidad del usuario.**

**Los scripts de reverse shell desarrollados como parte de este proyecto NO están incluidos directamente en este repositorio público para prevenir su uso indebido. Sin embargo, la metodología y los resultados están detallados en el documento del proyecto.**

## Documento del Proyecto

[Accede al documento completo del Proyecto Red Team aquí](Proyecto%20Red%20Team.docx)

## Contacto

Juan Manuel Torrez Churqui
Julio, 2025
Universidad Mayor de San Simón, Cochabamba – Bolivia
