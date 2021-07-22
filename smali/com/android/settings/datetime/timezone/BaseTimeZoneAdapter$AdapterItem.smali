.class public interface abstract Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;
.super Ljava/lang/Object;
.source "BaseTimeZoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdapterItem"
.end annotation


# virtual methods
.method public abstract getCurrentTime()Ljava/lang/String;
.end method

.method public abstract getIconText()Ljava/lang/String;
.end method

.method public abstract getItemId()J
.end method

.method public abstract getSearchKeys()[Ljava/lang/String;
.end method

.method public abstract getSummary()Ljava/lang/CharSequence;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method
