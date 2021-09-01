.class Lcom/android/settings/notification/SettingPref$1;
.super Ljava/lang/Object;
.source "SettingPref.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroidx/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SettingPref;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    iput-object p2, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/android/settings/notification/SettingPref$1;->this$0:Lcom/android/settings/notification/SettingPref;

    iget-object p0, p0, Lcom/android/settings/notification/SettingPref$1;->val$context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    const/4 p0, 0x1

    return p0
.end method
