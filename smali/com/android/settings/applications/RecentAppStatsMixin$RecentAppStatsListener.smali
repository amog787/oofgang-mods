.class public interface abstract Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;
.super Ljava/lang/Object;
.source "RecentAppStatsMixin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RecentAppStatsMixin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecentAppStatsListener"
.end annotation


# virtual methods
.method public abstract onReloadDataCompleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;)V"
        }
    .end annotation
.end method
