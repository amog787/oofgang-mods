.class Lcom/oneplus/settings/notification/OPRingPattern$1;
.super Ljava/lang/Object;
.source "OPRingPattern.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPRingPattern;->initVibrateWhenRinging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPRingPattern;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPRingPattern;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingPattern$1;->this$0:Lcom/oneplus/settings/notification/OPRingPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 88
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 89
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPRingPattern$1;->this$0:Lcom/oneplus/settings/notification/OPRingPattern;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPRingPattern;->access$000(Lcom/oneplus/settings/notification/OPRingPattern;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "vibrate_when_ringing"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
