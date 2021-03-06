//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Data.EntityClient;
using System.ComponentModel;
using System.Xml.Serialization;
using System.Runtime.Serialization;

[assembly: EdmSchemaAttribute()]
#region EDM Relationship Metadata

[assembly: EdmRelationshipAttribute("Data", "SentencesVariants", "Sentences", System.Data.Metadata.Edm.RelationshipMultiplicity.One, typeof(Game.Sentences), "Variants", System.Data.Metadata.Edm.RelationshipMultiplicity.Many, typeof(Game.Variants), true)]

#endregion

namespace Game
{
    #region Contexts
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    public partial class DataContainer : ObjectContext
    {
        #region Constructors
    
        /// <summary>
        /// Initializes a new DataContainer object using the connection string found in the 'DataContainer' section of the application configuration file.
        /// </summary>
        public DataContainer() : base("name=DataContainer", "DataContainer")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new DataContainer object.
        /// </summary>
        public DataContainer(string connectionString) : base(connectionString, "DataContainer")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new DataContainer object.
        /// </summary>
        public DataContainer(EntityConnection connection) : base(connection, "DataContainer")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        #endregion
    
        #region Partial Methods
    
        partial void OnContextCreated();
    
        #endregion
    
        #region ObjectSet Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Math> MathTable
        {
            get
            {
                if ((_MathTable == null))
                {
                    _MathTable = base.CreateObjectSet<Math>("MathTable");
                }
                return _MathTable;
            }
        }
        private ObjectSet<Math> _MathTable;
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Sentences> SentenceTable
        {
            get
            {
                if ((_SentenceTable == null))
                {
                    _SentenceTable = base.CreateObjectSet<Sentences>("SentenceTable");
                }
                return _SentenceTable;
            }
        }
        private ObjectSet<Sentences> _SentenceTable;
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Variants> VariantTable
        {
            get
            {
                if ((_VariantTable == null))
                {
                    _VariantTable = base.CreateObjectSet<Variants>("VariantTable");
                }
                return _VariantTable;
            }
        }
        private ObjectSet<Variants> _VariantTable;
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<HallOfFame> HallOfFameTable
        {
            get
            {
                if ((_HallOfFameTable == null))
                {
                    _HallOfFameTable = base.CreateObjectSet<HallOfFame>("HallOfFameTable");
                }
                return _HallOfFameTable;
            }
        }
        private ObjectSet<HallOfFame> _HallOfFameTable;

        #endregion
        #region AddTo Methods
    
        /// <summary>
        /// Deprecated Method for adding a new object to the MathTable EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToMathTable(Math math)
        {
            base.AddObject("MathTable", math);
        }
    
        /// <summary>
        /// Deprecated Method for adding a new object to the SentenceTable EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToSentenceTable(Sentences sentences)
        {
            base.AddObject("SentenceTable", sentences);
        }
    
        /// <summary>
        /// Deprecated Method for adding a new object to the VariantTable EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToVariantTable(Variants variants)
        {
            base.AddObject("VariantTable", variants);
        }
    
        /// <summary>
        /// Deprecated Method for adding a new object to the HallOfFameTable EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToHallOfFameTable(HallOfFame hallOfFame)
        {
            base.AddObject("HallOfFameTable", hallOfFame);
        }

        #endregion
    }
    

    #endregion
    
    #region Entities
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="Data", Name="HallOfFame")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class HallOfFame : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new HallOfFame object.
        /// </summary>
        /// <param name="id">Initial value of the Id property.</param>
        /// <param name="name">Initial value of the Name property.</param>
        /// <param name="correct">Initial value of the Correct property.</param>
        /// <param name="gameType">Initial value of the GameType property.</param>
        /// <param name="date">Initial value of the Date property.</param>
        public static HallOfFame CreateHallOfFame(global::System.Int32 id, global::System.String name, global::System.Int32 correct, global::System.Byte gameType, global::System.DateTime date)
        {
            HallOfFame hallOfFame = new HallOfFame();
            hallOfFame.Id = id;
            hallOfFame.Name = name;
            hallOfFame.Correct = correct;
            hallOfFame.GameType = gameType;
            hallOfFame.Date = date;
            return hallOfFame;
        }

        #endregion
        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 Id
        {
            get
            {
                return _Id;
            }
            set
            {
                if (_Id != value)
                {
                    OnIdChanging(value);
                    ReportPropertyChanging("Id");
                    _Id = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("Id");
                    OnIdChanged();
                }
            }
        }
        private global::System.Int32 _Id;
        partial void OnIdChanging(global::System.Int32 value);
        partial void OnIdChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Name
        {
            get
            {
                return _Name;
            }
            set
            {
                OnNameChanging(value);
                ReportPropertyChanging("Name");
                _Name = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Name");
                OnNameChanged();
            }
        }
        private global::System.String _Name;
        partial void OnNameChanging(global::System.String value);
        partial void OnNameChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 Correct
        {
            get
            {
                return _Correct;
            }
            set
            {
                OnCorrectChanging(value);
                ReportPropertyChanging("Correct");
                _Correct = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("Correct");
                OnCorrectChanged();
            }
        }
        private global::System.Int32 _Correct;
        partial void OnCorrectChanging(global::System.Int32 value);
        partial void OnCorrectChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Byte GameType
        {
            get
            {
                return _GameType;
            }
            set
            {
                OnGameTypeChanging(value);
                ReportPropertyChanging("GameType");
                _GameType = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("GameType");
                OnGameTypeChanged();
            }
        }
        private global::System.Byte _GameType;
        partial void OnGameTypeChanging(global::System.Byte value);
        partial void OnGameTypeChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.DateTime Date
        {
            get
            {
                return _Date;
            }
            set
            {
                OnDateChanging(value);
                ReportPropertyChanging("Date");
                _Date = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("Date");
                OnDateChanged();
            }
        }
        private global::System.DateTime _Date;
        partial void OnDateChanging(global::System.DateTime value);
        partial void OnDateChanged();

        #endregion
    
    }
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="Data", Name="Math")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Math : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Math object.
        /// </summary>
        /// <param name="id">Initial value of the Id property.</param>
        /// <param name="equation">Initial value of the Equation property.</param>
        /// <param name="answer">Initial value of the Answer property.</param>
        public static Math CreateMath(global::System.Int32 id, global::System.String equation, global::System.Double answer)
        {
            Math math = new Math();
            math.Id = id;
            math.Equation = equation;
            math.Answer = answer;
            return math;
        }

        #endregion
        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 Id
        {
            get
            {
                return _Id;
            }
            set
            {
                if (_Id != value)
                {
                    OnIdChanging(value);
                    ReportPropertyChanging("Id");
                    _Id = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("Id");
                    OnIdChanged();
                }
            }
        }
        private global::System.Int32 _Id;
        partial void OnIdChanging(global::System.Int32 value);
        partial void OnIdChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Equation
        {
            get
            {
                return _Equation;
            }
            set
            {
                OnEquationChanging(value);
                ReportPropertyChanging("Equation");
                _Equation = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Equation");
                OnEquationChanged();
            }
        }
        private global::System.String _Equation;
        partial void OnEquationChanging(global::System.String value);
        partial void OnEquationChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Double Answer
        {
            get
            {
                return _Answer;
            }
            set
            {
                OnAnswerChanging(value);
                ReportPropertyChanging("Answer");
                _Answer = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("Answer");
                OnAnswerChanged();
            }
        }
        private global::System.Double _Answer;
        partial void OnAnswerChanging(global::System.Double value);
        partial void OnAnswerChanged();

        #endregion
    
    }
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="Data", Name="Sentences")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Sentences : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Sentences object.
        /// </summary>
        /// <param name="id">Initial value of the Id property.</param>
        /// <param name="sentence">Initial value of the Sentence property.</param>
        /// <param name="word">Initial value of the Word property.</param>
        public static Sentences CreateSentences(global::System.Int32 id, global::System.String sentence, global::System.String word)
        {
            Sentences sentences = new Sentences();
            sentences.Id = id;
            sentences.Sentence = sentence;
            sentences.Word = word;
            return sentences;
        }

        #endregion
        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 Id
        {
            get
            {
                return _Id;
            }
            set
            {
                if (_Id != value)
                {
                    OnIdChanging(value);
                    ReportPropertyChanging("Id");
                    _Id = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("Id");
                    OnIdChanged();
                }
            }
        }
        private global::System.Int32 _Id;
        partial void OnIdChanging(global::System.Int32 value);
        partial void OnIdChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Sentence
        {
            get
            {
                return _Sentence;
            }
            set
            {
                OnSentenceChanging(value);
                ReportPropertyChanging("Sentence");
                _Sentence = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Sentence");
                OnSentenceChanged();
            }
        }
        private global::System.String _Sentence;
        partial void OnSentenceChanging(global::System.String value);
        partial void OnSentenceChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String Word
        {
            get
            {
                return _Word;
            }
            set
            {
                OnWordChanging(value);
                ReportPropertyChanging("Word");
                _Word = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("Word");
                OnWordChanged();
            }
        }
        private global::System.String _Word;
        partial void OnWordChanging(global::System.String value);
        partial void OnWordChanged();

        #endregion
    
        #region Navigation Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("Data", "SentencesVariants", "Variants")]
        public EntityCollection<Variants> Variants
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedCollection<Variants>("Data.SentencesVariants", "Variants");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedCollection<Variants>("Data.SentencesVariants", "Variants", value);
                }
            }
        }

        #endregion
    }
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="Data", Name="Variants")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Variants : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Variants object.
        /// </summary>
        /// <param name="id">Initial value of the Id property.</param>
        /// <param name="variant">Initial value of the Variant property.</param>
        /// <param name="sentencesId">Initial value of the SentencesId property.</param>
        public static Variants CreateVariants(global::System.Int32 id, global::System.Int32 variant, global::System.Int32 sentencesId)
        {
            Variants variants = new Variants();
            variants.Id = id;
            variants.Variant = variant;
            variants.SentencesId = sentencesId;
            return variants;
        }

        #endregion
        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 Id
        {
            get
            {
                return _Id;
            }
            set
            {
                if (_Id != value)
                {
                    OnIdChanging(value);
                    ReportPropertyChanging("Id");
                    _Id = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("Id");
                    OnIdChanged();
                }
            }
        }
        private global::System.Int32 _Id;
        partial void OnIdChanging(global::System.Int32 value);
        partial void OnIdChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 Variant
        {
            get
            {
                return _Variant;
            }
            set
            {
                OnVariantChanging(value);
                ReportPropertyChanging("Variant");
                _Variant = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("Variant");
                OnVariantChanged();
            }
        }
        private global::System.Int32 _Variant;
        partial void OnVariantChanging(global::System.Int32 value);
        partial void OnVariantChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 SentencesId
        {
            get
            {
                return _SentencesId;
            }
            set
            {
                OnSentencesIdChanging(value);
                ReportPropertyChanging("SentencesId");
                _SentencesId = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("SentencesId");
                OnSentencesIdChanged();
            }
        }
        private global::System.Int32 _SentencesId;
        partial void OnSentencesIdChanging(global::System.Int32 value);
        partial void OnSentencesIdChanged();

        #endregion
    
        #region Navigation Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("Data", "SentencesVariants", "Sentences")]
        public Sentences Sentences
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Sentences>("Data.SentencesVariants", "Sentences").Value;
            }
            set
            {
                ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Sentences>("Data.SentencesVariants", "Sentences").Value = value;
            }
        }
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [BrowsableAttribute(false)]
        [DataMemberAttribute()]
        public EntityReference<Sentences> SentencesReference
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Sentences>("Data.SentencesVariants", "Sentences");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedReference<Sentences>("Data.SentencesVariants", "Sentences", value);
                }
            }
        }

        #endregion
    }

    #endregion
    
}
