.class Lcom/oneplus/settings/better/OPScreenColorMode$2;
.super Landroid/database/ContentObserver;
.source "OPScreenColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPScreenColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final accessibilityDisplayDaltonizerEnabledUri:Landroid/net/Uri;

.field final accessibilityDisplayInversionEnabledUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/better/OPScreenColorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPScreenColorMode;Landroid/os/Handler;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "accessibility_display_daltonizer_enabled"

    .line 238
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->accessibilityDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    const-string p1, "accessibility_display_inversion_enabled"

    .line 239
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->accessibilityDisplayInversionEnabledUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 244
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 245
    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->accessibilityDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->accessibilityDisplayInversionEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {p1}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$100(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;

    move-result-object p1

    const/16 p2, 0xc

    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p2

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$200(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p2

    .line 249
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$300(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v2

    if-nez p1, :cond_3

    if-nez v1, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, p2

    :goto_2
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 250
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$400(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v2

    if-nez p1, :cond_4

    if-nez v1, :cond_4

    move v3, v0

    goto :goto_3

    :cond_4
    move v3, p2

    :goto_3
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 251
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$500(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v2

    if-nez p1, :cond_5

    if-nez v1, :cond_5

    move v3, v0

    goto :goto_4

    :cond_5
    move v3, p2

    :goto_4
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 252
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$600(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v2

    if-nez p1, :cond_6

    if-nez v1, :cond_6

    move v3, v0

    goto :goto_5

    :cond_6
    move v3, p2

    :goto_5
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 253
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$700(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v2

    if-nez p1, :cond_7

    if-nez v1, :cond_7

    move v3, v0

    goto :goto_6

    :cond_7
    move v3, p2

    :goto_6
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 254
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$800(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v2

    if-nez p1, :cond_8

    if-nez v1, :cond_8

    move v3, v0

    goto :goto_7

    :cond_8
    move v3, p2

    :goto_7
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 255
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$900(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v2

    if-nez p1, :cond_9

    if-nez v1, :cond_9

    move v3, v0

    goto :goto_8

    :cond_9
    move v3, p2

    :goto_8
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 256
    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$1000(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroidx/preference/PreferenceCategory;

    move-result-object v2

    if-nez p1, :cond_a

    if-nez v1, :cond_a

    move v3, v0

    goto :goto_9

    :cond_a
    move v3, p2

    :goto_9
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 257
    iget-object p0, p0, Lcom/oneplus/settings/better/OPScreenColorMode$2;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPSeekBarPreference;

    move-result-object p0

    if-nez p1, :cond_b

    if-nez v1, :cond_b

    move p2, v0

    :cond_b
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_c
    return-void
.end method
