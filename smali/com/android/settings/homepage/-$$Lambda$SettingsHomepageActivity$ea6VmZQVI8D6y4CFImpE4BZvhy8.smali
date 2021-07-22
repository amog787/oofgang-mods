.class public final synthetic Lcom/android/settings/homepage/-$$Lambda$SettingsHomepageActivity$ea6VmZQVI8D6y4CFImpE4BZvhy8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/SettingsHomepageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/-$$Lambda$SettingsHomepageActivity$ea6VmZQVI8D6y4CFImpE4BZvhy8;->f$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/-$$Lambda$SettingsHomepageActivity$ea6VmZQVI8D6y4CFImpE4BZvhy8;->f$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$onConfigurationChanged$0$SettingsHomepageActivity()V

    return-void
.end method
