.class Lcom/oneplus/settings/better/OPGamingMode$1;
.super Landroid/os/Handler;
.source "OPGamingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPGamingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPGamingMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPGamingMode;Landroid/os/Looper;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 107
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGamingMode;->access$000(Lcom/oneplus/settings/better/OPGamingMode;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 109
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGamingMode;->access$100(Lcom/oneplus/settings/better/OPGamingMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGamingMode;->access$100(Lcom/oneplus/settings/better/OPGamingMode;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGamingMode;->access$200(Lcom/oneplus/settings/better/OPGamingMode;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    .line 111
    invoke-virtual {v1, p1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object p1

    .line 110
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object p1, p0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPGamingMode;->access$100(Lcom/oneplus/settings/better/OPGamingMode;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 115
    iget-object v3, p0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPGamingMode;->access$100(Lcom/oneplus/settings/better/OPGamingMode;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    .line 116
    new-instance v4, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    iget-object v5, p0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v5}, Lcom/oneplus/settings/better/OPGamingMode;->access$300(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v4, v1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonVisible(Z)V

    const/4 v5, 0x1

    .line 122
    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setRightIconVisible(Z)V

    .line 123
    new-instance v5, Lcom/oneplus/settings/better/OPGamingMode$1$1;

    invoke-direct {v5, p0, v4, v3}, Lcom/oneplus/settings/better/OPGamingMode$1$1;-><init>(Lcom/oneplus/settings/better/OPGamingMode$1;Lcom/oneplus/settings/ui/OPTextViewButtonPreference;Lcom/oneplus/settings/better/OPAppModel;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setOnRightIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v5, p0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v5}, Lcom/oneplus/settings/better/OPGamingMode;->access$000(Lcom/oneplus/settings/better/OPGamingMode;)Landroidx/preference/PreferenceCategory;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPGamingMode;->access$500(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "game_mode_apps"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeApps(Ljava/lang/String;)V

    return-void
.end method
