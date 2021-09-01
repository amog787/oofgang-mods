.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$CYGtB5I1fBKv8RTisOJzAVzWeLI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/slices/SettingsSliceProvider;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$CYGtB5I1fBKv8RTisOJzAVzWeLI;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iput-object p2, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$CYGtB5I1fBKv8RTisOJzAVzWeLI;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$CYGtB5I1fBKv8RTisOJzAVzWeLI;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iget-object p0, p0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$CYGtB5I1fBKv8RTisOJzAVzWeLI;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/android/settings/slices/SettingsSliceProvider;->lambda$loadSliceInBackground$5$SettingsSliceProvider(Landroid/net/Uri;)V

    return-void
.end method
