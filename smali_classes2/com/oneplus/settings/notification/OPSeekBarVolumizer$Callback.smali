.class public interface abstract Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;
.super Ljava/lang/Object;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onMuted(ZZ)V
.end method

.method public abstract onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end method

.method public abstract onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
.end method
