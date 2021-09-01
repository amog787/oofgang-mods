.class public final synthetic Lcom/android/settings/dream/-$$Lambda$StartNowPreferenceController$jHhaL9YNqQfg4aZuushndV2Tc_Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dream/StartNowPreferenceController;

.field public final synthetic f$1:Lcom/android/settingslib/widget/LayoutPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dream/StartNowPreferenceController;Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dream/-$$Lambda$StartNowPreferenceController$jHhaL9YNqQfg4aZuushndV2Tc_Y;->f$0:Lcom/android/settings/dream/StartNowPreferenceController;

    iput-object p2, p0, Lcom/android/settings/dream/-$$Lambda$StartNowPreferenceController$jHhaL9YNqQfg4aZuushndV2Tc_Y;->f$1:Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dream/-$$Lambda$StartNowPreferenceController$jHhaL9YNqQfg4aZuushndV2Tc_Y;->f$0:Lcom/android/settings/dream/StartNowPreferenceController;

    iget-object p0, p0, Lcom/android/settings/dream/-$$Lambda$StartNowPreferenceController$jHhaL9YNqQfg4aZuushndV2Tc_Y;->f$1:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dream/StartNowPreferenceController;->lambda$displayPreference$0$StartNowPreferenceController(Lcom/android/settingslib/widget/LayoutPreference;Landroid/view/View;)V

    return-void
.end method
