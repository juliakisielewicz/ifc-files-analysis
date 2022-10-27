# docker build -t python-ifc .
# docker run -it python-ifc 
FROM continuumio/miniconda3

RUN conda install -c conda-forge ifcopenshell

ADD ifcSpace.py .

ADD Duplex_A.ifc .

CMD ["python", "ifcSpace.py"]