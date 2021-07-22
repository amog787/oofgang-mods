.class public Lcom/oneplus/settings/laboratory/OPLabPluginModel;
.super Ljava/lang/Object;
.source "OPLabPluginModel.java"


# instance fields
.field private action:Ljava/lang/String;

.field private featureIconId:I

.field private featureKey:Ljava/lang/String;

.field private featureSummary:Ljava/lang/String;

.field private featureTitle:Ljava/lang/String;

.field private multiToggleName:[Ljava/lang/String;

.field private toggleCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public geFeatureIconId()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureIconId:I

    return p0
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureKey()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureKey:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureSummary()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureTitle()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getMultiToggleName()[Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->multiToggleName:[Ljava/lang/String;

    return-object p0
.end method

.method public getToggleCount()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->toggleCount:I

    return p0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->action:Ljava/lang/String;

    return-void
.end method

.method public setFeatureIconId(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureIconId:I

    return-void
.end method

.method public setFeatureKey(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureKey:Ljava/lang/String;

    return-void
.end method

.method public setFeatureSummary(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureSummary:Ljava/lang/String;

    return-void
.end method

.method public setFeatureTitle(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureTitle:Ljava/lang/String;

    return-void
.end method

.method public setMultiToggleName([Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->multiToggleName:[Ljava/lang/String;

    return-void
.end method

.method public setToggleCount(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->toggleCount:I

    return-void
.end method
