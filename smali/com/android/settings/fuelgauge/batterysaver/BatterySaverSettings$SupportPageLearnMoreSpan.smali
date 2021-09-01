.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;
.super Landroid/text/style/URLSpan;
.source "BatterySaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportPageLearnMoreSpan"
.end annotation


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mUriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 115
    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;->mFragment:Landroidx/fragment/app/Fragment;

    .line 117
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;->mUriString:Ljava/lang/String;

    return-void
.end method

.method public static linkify(Landroid/text/Spannable;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8

    .line 144
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/Annotation;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 145
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 146
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 147
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 148
    invoke-virtual {v3}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "url"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 149
    new-instance v6, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;

    invoke-direct {v6, p1, p2}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 151
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/16 v3, 0x21

    .line 152
    invoke-interface {p0, v6, v4, v5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;->mUriString:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x0

    .line 133
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
