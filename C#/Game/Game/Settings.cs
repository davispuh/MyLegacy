//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.239
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System.Xml.Serialization;

// 
// This source code was auto-generated by xsd, Version=4.0.30319.1.
// 


/// <remarks/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.1")]
[System.SerializableAttribute()]
[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.ComponentModel.DesignerCategoryAttribute("code")]
[System.Xml.Serialization.XmlTypeAttribute(AnonymousType=true, Namespace="e")]
[System.Xml.Serialization.XmlRootAttribute(Namespace="e", IsNullable=false)]
public partial class Settings {
    
    private string adminPasswordField;
    
    private SqlType sqlTypeField;
    
    private string sqlServerField;
    
    private string sqlCatalogField;
    
    private bool sqlAuthField;
    
    private string sqlUserField;
    
    private string sqlPasswordField;
    
    public Settings() {
        this.sqlTypeField = SqlType.Compact;
        this.sqlAuthField = false;
    }
    
    /// <remarks/>
    public string AdminPassword {
        get {
            return this.adminPasswordField;
        }
        set {
            this.adminPasswordField = value;
        }
    }
    
    /// <remarks/>
    public SqlType SqlType {
        get {
            return this.sqlTypeField;
        }
        set {
            this.sqlTypeField = value;
        }
    }
    
    /// <remarks/>
    public string SqlServer {
        get {
            return this.sqlServerField;
        }
        set {
            this.sqlServerField = value;
        }
    }
    
    /// <remarks/>
    public string SqlCatalog {
        get {
            return this.sqlCatalogField;
        }
        set {
            this.sqlCatalogField = value;
        }
    }
    
    /// <remarks/>
    public bool SqlAuth {
        get {
            return this.sqlAuthField;
        }
        set {
            this.sqlAuthField = value;
        }
    }
    
    /// <remarks/>
    public string SqlUser {
        get {
            return this.sqlUserField;
        }
        set {
            this.sqlUserField = value;
        }
    }
    
    /// <remarks/>
    public string SqlPassword {
        get {
            return this.sqlPasswordField;
        }
        set {
            this.sqlPasswordField = value;
        }
    }
}

/// <remarks/>
[System.CodeDom.Compiler.GeneratedCodeAttribute("xsd", "4.0.30319.1")]
[System.SerializableAttribute()]
[System.Xml.Serialization.XmlTypeAttribute(Namespace="e")]
public enum SqlType {
    
    /// <remarks/>
    Compact,
    
    /// <remarks/>
    Local,
    
    /// <remarks/>
    Remote,
}
