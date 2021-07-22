.class public Lcom/google/android/material/seekbar/TickSeekBar$TickData;
.super Ljava/lang/Object;
.source "TickSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/seekbar/TickSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TickData"
.end annotation


# instance fields
.field private location:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Lcom/google/android/material/seekbar/TickSeekBar$TickData;->location:F

    return-void
.end method


# virtual methods
.method public getLocation()F
    .locals 0

    .line 181
    iget p0, p0, Lcom/google/android/material/seekbar/TickSeekBar$TickData;->location:F

    return p0
.end method
