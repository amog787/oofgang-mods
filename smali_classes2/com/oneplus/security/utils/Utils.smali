.class public Lcom/oneplus/security/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/oneplus/security/utils/Utils;->sBuilder:Ljava/lang/StringBuilder;

    .line 495
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/oneplus/security/utils/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/oneplus/security/utils/Utils;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public static currentUserIsOwner()Z
    .locals 1

    .line 323
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 681
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 10

    .line 507
    sget-object v0, Lcom/oneplus/security/utils/Utils;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v0

    const/4 v1, 0x0

    .line 508
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 509
    sget-object v3, Lcom/oneplus/security/utils/Utils;->sFormatter:Ljava/util/Formatter;

    const v8, 0x10010

    const/4 v9, 0x0

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 510
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;
    .locals 5

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    const-string v0, "-"

    if-gez p4, :cond_0

    move-object p4, v0

    goto :goto_0

    :cond_0
    const-string p4, ""

    .line 77
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    long-to-float p1, p1

    .line 78
    sget p2, Lcom/android/settings/R$string;->byteShort:I

    const/high16 v1, 0x44610000    # 900.0f

    cmpl-float v2, p1, v1

    const/high16 v3, 0x44800000    # 1024.0f

    if-lez v2, :cond_1

    .line 80
    sget p2, Lcom/android/settings/R$string;->kilobyteShort:I

    div-float/2addr p1, v3

    :cond_1
    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    .line 84
    sget p2, Lcom/android/settings/R$string;->megabyteShort:I

    div-float/2addr p1, v3

    :cond_2
    cmpl-float v2, p1, v1

    if-lez v2, :cond_3

    .line 88
    sget p2, Lcom/android/settings/R$string;->gigabyteShort:I

    div-float/2addr p1, v3

    :cond_3
    cmpl-float v2, p1, v1

    if-lez v2, :cond_4

    .line 92
    sget p2, Lcom/android/settings/R$string;->terabyteShort:I

    div-float/2addr p1, v3

    :cond_4
    cmpl-float v1, p1, v1

    if-lez v1, :cond_5

    .line 96
    sget p2, Lcom/android/settings/R$string;->petabyteShort:I

    div-float/2addr p1, v3

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    const-string v2, "%.2f"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v1, :cond_7

    .line 101
    sget p3, Lcom/android/settings/R$string;->byteShort:I

    if-ne p2, p3, :cond_6

    .line 102
    sget p2, Lcom/android/settings/R$string;->megabyteShort:I

    :cond_6
    new-array p3, v4, [Ljava/lang/Object;

    .line 104
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {v2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_7
    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_9

    if-eqz p3, :cond_8

    new-array p3, v4, [Ljava/lang/Object;

    .line 107
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {v2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_8
    new-array p3, v4, [Ljava/lang/Object;

    .line 109
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {v2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_9
    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_c

    .line 112
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p3, :cond_a

    new-array p3, v4, [Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v3

    const-string p1, "%.1f"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_a
    if-eqz p3, :cond_b

    new-array p3, v4, [Ljava/lang/Object;

    .line 115
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {v2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_b
    new-array p3, v4, [Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {v2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_c
    const v0, 0x461c4000    # 10000.0f

    cmpg-float v0, p1, v0

    const-string v1, "%.0f"

    if-gez v0, :cond_e

    if-eqz p3, :cond_d

    new-array p3, v4, [Ljava/lang/Object;

    .line 121
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_d
    new-array p3, v4, [Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {v2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_e
    new-array p3, v4, [Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 128
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    .line 129
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    return-object p0
.end method

.method public static getFormattedFileSizeInGb(Landroid/content/Context;JZ)[Ljava/lang/String;
    .locals 2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    .line 148
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    div-float/2addr p1, p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    div-float/2addr p1, p2

    .line 151
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "%.2f"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p2

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->gigabyteShort:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    return-object p3
.end method

.method public static getFormattedFileSizeInMb(Landroid/content/Context;JZ)[Ljava/lang/String;
    .locals 2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    .line 136
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    div-float/2addr p1, p2

    .line 138
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "%.2f"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p2

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->megabyteShort:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    return-object p3
.end method

.method public static hasSDK24()Z
    .locals 2

    .line 455
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasSDK27()Z
    .locals 2

    .line 473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCollectionEmpty(Ljava/util/Collection;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 267
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isIntentReceiverExists(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 659
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    .line 373
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .locals 1

    .line 383
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static issSDKAbove28()Z
    .locals 2

    .line 491
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 2

    .line 340
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.SubSettings"

    .line 341
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment"

    .line 342
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_args"

    .line 343
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_title_res_package_name"

    .line 344
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_title_resid"

    .line 345
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_title"

    .line 346
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_as_shortcut"

    .line 347
    invoke-virtual {p0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public static sendAppTracker(Ljava/lang/String;I)V
    .locals 0

    .line 420
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static setEditTextAtLastLocation(Landroid/widget/EditText;)V
    .locals 1

    .line 310
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    .line 311
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 313
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method public static startSettingsAppFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;I)V
    .locals 7

    if-gez p3, :cond_1

    if-eqz p4, :cond_0

    .line 355
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, ""

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    move-object v5, p4

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 361
    invoke-static/range {v0 .. v6}, Lcom/oneplus/security/utils/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object p1

    .line 362
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
