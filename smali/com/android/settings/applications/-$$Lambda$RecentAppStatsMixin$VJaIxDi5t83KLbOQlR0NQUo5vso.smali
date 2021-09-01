.class public final synthetic Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$VJaIxDi5t83KLbOQlR0NQUo5vso;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

.field public final synthetic f$1:Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/RecentAppStatsMixin;Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$VJaIxDi5t83KLbOQlR0NQUo5vso;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$VJaIxDi5t83KLbOQlR0NQUo5vso;->f$1:Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$VJaIxDi5t83KLbOQlR0NQUo5vso;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    iget-object p0, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$VJaIxDi5t83KLbOQlR0NQUo5vso;->f$1:Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RecentAppStatsMixin;->lambda$onStart$0$RecentAppStatsMixin(Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V

    return-void
.end method
