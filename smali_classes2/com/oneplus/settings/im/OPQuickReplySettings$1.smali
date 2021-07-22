.class Lcom/oneplus/settings/im/OPQuickReplySettings$1;
.super Landroid/os/Handler;
.source "OPQuickReplySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/im/OPQuickReplySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/im/OPQuickReplySettings;Landroid/os/Looper;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 75
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    iget-object v1, v0, Lcom/android/settings/SettingsPreferenceFragment;->mAdapter:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$000(Lcom/oneplus/settings/im/OPQuickReplySettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$200(Lcom/oneplus/settings/im/OPQuickReplySettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$200(Lcom/oneplus/settings/im/OPQuickReplySettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$000(Lcom/oneplus/settings/im/OPQuickReplySettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    .line 80
    invoke-virtual {v1, p1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object p1

    .line 79
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {p1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$200(Lcom/oneplus/settings/im/OPQuickReplySettings;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    .line 83
    new-instance v1, Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v2}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$300(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 84
    sget v2, Lcom/android/settings/R$layout;->op_preference_material:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 85
    sget v2, Lcom/android/settings/R$layout;->op_preference_widget_switch:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 86
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v2}, Lcom/oneplus/settings/utils/OPApplicationUtils;->isIMQuickReplyApps(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isQuickReplyAppSelected(Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v2

    .line 91
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 93
    new-instance v2, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/settings/im/OPQuickReplySettings$1$1;-><init>(Lcom/oneplus/settings/im/OPQuickReplySettings$1;Lcom/oneplus/settings/better/OPAppModel;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {v0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {p1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 147
    iget-object p1, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {p1}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$100(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/im/OPQuickReplySettings$1;->this$0:Lcom/oneplus/settings/im/OPQuickReplySettings;

    invoke-static {p0}, Lcom/oneplus/settings/im/OPQuickReplySettings;->access$600(Lcom/oneplus/settings/im/OPQuickReplySettings;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method
