.class Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;
.super Landroid/database/ContentObserver;
.source "OPSystemUpdatePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUpdateObserver"
.end annotation


# instance fields
.field private final SYSTEM_UPDATE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    .line 126
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "has_new_version_to_update"

    .line 123
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    iget-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    iget-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public startObserving()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->access$000(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 143
    iget-object v1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->access$000(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
