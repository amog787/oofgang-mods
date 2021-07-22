.class public final synthetic Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAppPreferenceController$P93yGe3NhKzPqeqQwHkMaXpVB1M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAppPreferenceController$P93yGe3NhKzPqeqQwHkMaXpVB1M;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAppPreferenceController$P93yGe3NhKzPqeqQwHkMaXpVB1M;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAppPreferenceController$P93yGe3NhKzPqeqQwHkMaXpVB1M;->f$0:Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAppPreferenceController$P93yGe3NhKzPqeqQwHkMaXpVB1M;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->lambda$mayUpdateGearIcon$0$DefaultAppPreferenceController(Landroid/content/Intent;Lcom/android/settings/widget/GearPreference;)V

    return-void
.end method
