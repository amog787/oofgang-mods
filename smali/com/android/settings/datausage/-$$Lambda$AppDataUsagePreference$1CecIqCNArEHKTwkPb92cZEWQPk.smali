.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$1CecIqCNArEHKTwkPb92cZEWQPk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datausage/AppDataUsagePreference;

.field public final synthetic f$1:Lcom/android/settingslib/net/UidDetailProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/UidDetailProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$1CecIqCNArEHKTwkPb92cZEWQPk;->f$0:Lcom/android/settings/datausage/AppDataUsagePreference;

    iput-object p2, p0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$1CecIqCNArEHKTwkPb92cZEWQPk;->f$1:Lcom/android/settingslib/net/UidDetailProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$1CecIqCNArEHKTwkPb92cZEWQPk;->f$0:Lcom/android/settings/datausage/AppDataUsagePreference;

    iget-object p0, p0, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$1CecIqCNArEHKTwkPb92cZEWQPk;->f$1:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->lambda$new$1$AppDataUsagePreference(Lcom/android/settingslib/net/UidDetailProvider;)V

    return-void
.end method
