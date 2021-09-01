.class public Lcom/oneplus/security/widget/WidgetData;
.super Ljava/lang/Object;
.source "WidgetData.java"


# instance fields
.field private title:Ljava/lang/String;

.field private type:I

.field private units:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/oneplus/security/widget/WidgetData;->type:I

    .line 20
    iput-object p2, p0, Lcom/oneplus/security/widget/WidgetData;->value:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/oneplus/security/widget/WidgetData;->units:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/oneplus/security/widget/WidgetData;->type:I

    .line 27
    iput-object p2, p0, Lcom/oneplus/security/widget/WidgetData;->value:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/oneplus/security/widget/WidgetData;->units:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/oneplus/security/widget/WidgetData;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/security/widget/WidgetData;->type:I

    return p0
.end method

.method public getUnits()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetData;->units:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetData;->value:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetData;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/oneplus/security/widget/WidgetData;->type:I

    return-void
.end method

.method public setUnits(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetData;->units:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/oneplus/security/widget/WidgetData;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetData [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/security/widget/WidgetData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/security/widget/WidgetData;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", units="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetData;->units:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
