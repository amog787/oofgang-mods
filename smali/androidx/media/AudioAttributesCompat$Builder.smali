.class public Landroidx/media/AudioAttributesCompat$Builder;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field final mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    sget-boolean v0, Landroidx/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Landroidx/media/AudioAttributesImplBase$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplBase$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    goto :goto_0

    .line 376
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 377
    new-instance v0, Landroidx/media/AudioAttributesImplApi26$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi26$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 379
    new-instance v0, Landroidx/media/AudioAttributesImplApi21$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplApi21$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    goto :goto_0

    .line 381
    :cond_2
    new-instance v0, Landroidx/media/AudioAttributesImplBase$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesImplBase$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    :goto_0
    return-void
.end method


# virtual methods
.method public build()Landroidx/media/AudioAttributesCompat;
    .locals 1

    .line 409
    new-instance v0, Landroidx/media/AudioAttributesCompat;

    iget-object p0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    invoke-interface {p0}, Landroidx/media/AudioAttributesImpl$Builder;->build()Landroidx/media/AudioAttributesImpl;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/AudioAttributesImpl;)V

    return-object v0
.end method

.method public setLegacyStreamType(I)Landroidx/media/AudioAttributesCompat$Builder;
    .locals 1

    .line 478
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat$Builder;->mBuilderImpl:Landroidx/media/AudioAttributesImpl$Builder;

    invoke-interface {v0, p1}, Landroidx/media/AudioAttributesImpl$Builder;->setLegacyStreamType(I)Landroidx/media/AudioAttributesImpl$Builder;

    return-object p0
.end method
