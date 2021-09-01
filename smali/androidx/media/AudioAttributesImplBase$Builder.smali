.class Landroidx/media/AudioAttributesImplBase$Builder;
.super Ljava/lang/Object;
.source "AudioAttributesImplBase.java"

# interfaces
.implements Landroidx/media/AudioAttributesImpl$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mLegacyStream:I

.field private mUsage:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mUsage:I

    .line 181
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    .line 182
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    const/4 v0, -0x1

    .line 183
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mLegacyStream:I

    return-void
.end method


# virtual methods
.method public build()Landroidx/media/AudioAttributesImpl;
    .locals 4

    .line 198
    new-instance v0, Landroidx/media/AudioAttributesImplBase;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mContentType:I

    iget v2, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mFlags:I

    iget v3, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mUsage:I

    iget p0, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mLegacyStream:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/media/AudioAttributesImplBase;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic setLegacyStreamType(I)Landroidx/media/AudioAttributesImpl$Builder;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Landroidx/media/AudioAttributesImplBase$Builder;->setLegacyStreamType(I)Landroidx/media/AudioAttributesImplBase$Builder;

    return-object p0
.end method

.method public setLegacyStreamType(I)Landroidx/media/AudioAttributesImplBase$Builder;
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 266
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$Builder;->mLegacyStream:I

    return-object p0

    .line 262
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
