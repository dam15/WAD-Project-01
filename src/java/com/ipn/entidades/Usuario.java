package com.ipn.entidades;
// Generated 17/05/2014 12:39:02 AM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Usuario generated by hbm2java
 */
@Entity
@Table(name="usuario"
    ,catalog="wad_proyecto"
)
@NamedNativeQueries({
    @NamedNativeQuery(
            name="userLoginU",
            query="call userLogin(:username,:pass)",
            resultClass = Usuario.class
    )
})
public class Usuario  implements java.io.Serializable {

     private Integer idusuario;
     private String nombre;
     private String paterno;
     private String materno;
     private String correoUsuario;
     private String claveUsuario;
     private String nombreUsuario;
     private char tipoUsuario;
    // private List archivos;

    public Usuario() {
    }

     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="idusuario", unique=true, nullable=false)
    public Integer getIdusuario() {
        return this.idusuario;
    }
    
    public void setIdusuario(Integer idusuario) {
        this.idusuario = idusuario;
    }

    
    @Column(name="nombre", nullable=false, length=45)
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    
    @Column(name="paterno", nullable=false, length=45)
    public String getPaterno() {
        return this.paterno;
    }
    
    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    
    @Column(name="materno", nullable=false, length=45)
    public String getMaterno() {
        return this.materno;
    }
    
    public void setMaterno(String materno) {
        this.materno = materno;
    }

    
    @Column(name="correoUsuario", nullable=false, length=100)
    public String getCorreoUsuario() {
        return this.correoUsuario;
    }
    
    public void setCorreoUsuario(String correoUsuario) {
        this.correoUsuario = correoUsuario;
    }

    
    @Column(name="claveUsuario", nullable=false, length=45)
    public String getClaveUsuario() {
        return this.claveUsuario;
    }
    
    public void setClaveUsuario(String claveUsuario) {
        this.claveUsuario = claveUsuario;
    }

    
    @Column(name="nombreUsuario", nullable=false, length=45)
    public String getNombreUsuario() {
        return this.nombreUsuario;
    }
    
    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    
    @Column(name="tipoUsuario", nullable=false, length=1)
    public char getTipoUsuario() {
        return this.tipoUsuario;
    }
    
    public void setTipoUsuario(char tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
/**
@OneToMany(fetch=FetchType.LAZY, mappedBy="usuario")
    public List getArchivos() {
        return this.archivos;
    }
    
    public void setArchivos(List archivos) {
        this.archivos = archivos;
    }
*/
    @Override
    public String toString() {
        return "Usuario{" + "idusuario=" + idusuario + ", nombre=" + nombre + ", paterno=" + paterno + ", materno=" + materno + ", correoUsuario=" + correoUsuario + ", claveUsuario=" + claveUsuario + ", nombreUsuario=" + nombreUsuario + ", tipoUsuario=" + tipoUsuario + '}';
    }




}


