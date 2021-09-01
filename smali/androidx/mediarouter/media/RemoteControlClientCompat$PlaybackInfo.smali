.class public final Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RemoteControlClientCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# instance fields
.field public playbackStream:I

.field public playbackType:I

.field public volume:I

.field public volumeControlId:Ljava/lang/String;

.field public volumeHandling:I

.field public volumeMax:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    return-void
.end method
