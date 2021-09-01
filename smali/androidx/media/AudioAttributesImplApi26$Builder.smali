.class Landroidx/media/AudioAttributesImplApi26$Builder;
.super Landroidx/media/AudioAttributesImplApi21$Builder;
.source "AudioAttributesImplApi26.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesImplApi26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/media/AudioAttributesImplApi21$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media/AudioAttributesImpl;
    .locals 1

    .line 66
    new-instance v0, Landroidx/media/AudioAttributesImplApi26;

    iget-object p0, p0, Landroidx/media/AudioAttributesImplApi21$Builder;->mFwkBuilder:Landroid/media/AudioAttributes$Builder;

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media/AudioAttributesImplApi26;-><init>(Landroid/media/AudioAttributes;)V

    return-object v0
.end method
