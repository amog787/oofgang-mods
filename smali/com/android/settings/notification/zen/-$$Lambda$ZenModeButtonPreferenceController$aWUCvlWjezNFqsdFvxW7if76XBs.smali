.class public final synthetic Lcom/android/settings/notification/zen/-$$Lambda$ZenModeButtonPreferenceController$aWUCvlWjezNFqsdFvxW7if76XBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;

.field public final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeButtonPreferenceController$aWUCvlWjezNFqsdFvxW7if76XBs;->f$0:Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeButtonPreferenceController$aWUCvlWjezNFqsdFvxW7if76XBs;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeButtonPreferenceController$aWUCvlWjezNFqsdFvxW7if76XBs;->f$0:Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeButtonPreferenceController$aWUCvlWjezNFqsdFvxW7if76XBs;->f$1:Landroidx/preference/Preference;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;->lambda$updateZenButtonOnClickListener$1$ZenModeButtonPreferenceController(Landroidx/preference/Preference;Landroid/view/View;)V

    return-void
.end method
