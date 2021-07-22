.class public Lcom/android/settings/biometrics/face/ParticleCollection;
.super Ljava/lang/Object;
.source "ParticleCollection.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/face/ParticleCollection$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

.field private final mParticleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/biometrics/face/AnimationParticle;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticleListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

.field private final mPrimariesInProgress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/ParticleCollection$Listener;Landroid/graphics/Rect;I)V
    .locals 15

    move-object v0, p0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Lcom/android/settings/biometrics/face/ParticleCollection$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/ParticleCollection$1;-><init>(Lcom/android/settings/biometrics/face/ParticleCollection;)V

    iput-object v1, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    move-object/from16 v1, p2

    .line 77
    iput-object v1, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    .line 79
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 82
    sget v3, Lcom/android/settings/R$color;->face_anim_particle_color_1:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget v3, Lcom/android/settings/R$color;->face_anim_particle_color_2:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget v3, Lcom/android/settings/R$color;->face_anim_particle_color_3:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget v3, Lcom/android/settings/R$color;->face_anim_particle_color_4:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v2, v10

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mPrimariesInProgress:Ljava/util/List;

    const/16 v11, 0xc

    new-array v12, v11, [I

    .line 92
    fill-array-data v12, :array_0

    move v13, v3

    :goto_0
    if-ge v13, v11, :cond_1

    .line 95
    new-instance v14, Lcom/android/settings/biometrics/face/AnimationParticle;

    iget-object v3, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleListener:Lcom/android/settings/biometrics/face/AnimationParticle$Listener;

    aget v6, v12, v13

    const/16 v7, 0xc

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/biometrics/face/AnimationParticle;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/AnimationParticle$Listener;Landroid/graphics/Rect;IIILjava/util/List;)V

    .line 97
    iget-object v1, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mPrimariesInProgress:Ljava/util/List;

    aget v2, v12, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v14}, Lcom/android/settings/biometrics/face/AnimationParticle;->setAsPrimary()V

    .line 100
    :cond_0
    iget-object v1, v0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/settings/biometrics/face/ParticleCollection;->updateState(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x7
        0xb
        0x2
        0x6
        0xa
        0x1
        0x5
        0x9
        0x0
        0x4
        0x8
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/ParticleCollection;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mPrimariesInProgress:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/ParticleCollection;)Lcom/android/settings/biometrics/face/ParticleCollection$Listener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    return-object p0
.end method

.method private updateState(I)V
    .locals 2

    .line 119
    iget v0, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mState:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/face/AnimationParticle;

    invoke-virtual {v1, p1}, Lcom/android/settings/biometrics/face/AnimationParticle;->updateState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iput p1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mState:I

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/face/AnimationParticle;

    invoke-virtual {v1, p1}, Lcom/android/settings/biometrics/face/AnimationParticle;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x4

    .line 140
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/ParticleCollection;->updateState(I)V

    :cond_0
    return-void
.end method

.method public update(JJ)V
    .locals 2

    const/4 v0, 0x0

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settings/biometrics/face/ParticleCollection;->mParticleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/face/AnimationParticle;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/biometrics/face/AnimationParticle;->update(JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
