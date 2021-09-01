.class public Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;
.super Ljava/lang/Object;
.source "SoftwareInfoEntity.java"


# instance fields
.field private intent:Ljava/lang/String;

.field private resIcon:I

.field private summary:Ljava/lang/CharSequence;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->intent:Ljava/lang/String;

    return-object p0
.end method

.method public getResIcon()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->resIcon:I

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->summary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->intent:Ljava/lang/String;

    return-void
.end method

.method public setResIcon(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->resIcon:I

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->summary:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->title:Ljava/lang/String;

    return-void
.end method
