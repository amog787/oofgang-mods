.class Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$1;
.super Ljava/lang/Object;
.source "ZenModePrioritySendersPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 1

    .line 196
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$000(Ljava/lang/String;)I

    move-result p1

    .line 197
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$100(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 198
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    .line 199
    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;->access$200(Lcom/android/settings/notification/zen/ZenModePrioritySendersPreferenceController;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 198
    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveSenders(II)V

    :cond_1
    return-void
.end method
