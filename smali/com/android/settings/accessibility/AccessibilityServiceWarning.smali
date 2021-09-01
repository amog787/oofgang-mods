.class public Lcom/android/settings/accessibility/AccessibilityServiceWarning;
.super Ljava/lang/Object;
.source "AccessibilityServiceWarning.java"


# static fields
.field private static final filterTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-object v0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$nkJgb8pIGc-CYnFQY2NyegOymVE;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$AccessibilityServiceWarning$nkJgb8pIGc-CYnFQY2NyegOymVE;

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->filterTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public static createCapabilitiesDialog(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 2

    .line 66
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->createEnableDialogContentView(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 72
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Dialog;->create()V

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public static createDisableDialog(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 6

    .line 138
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->disable_service_title:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 140
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 139
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->disable_service_message:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->accessibility_dialog_button_stop:I

    .line 142
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 143
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v3, v2

    .line 141
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->accessibility_dialog_button_stop:I

    .line 145
    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->accessibility_dialog_button_cancel:I

    .line 146
    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createEnableDialogContentView(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 7

    const-string v0, "layout_inflater"

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 95
    sget v1, Lcom/android/settings/R$layout;->enable_accessibility_service_dialog_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    sget v1, Lcom/android/settings/R$id;->encryption_warning:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    invoke-static {}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->isFullDiskEncrypted()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 101
    sget v2, Lcom/android/settings/R$string;->enable_service_encryption_warning:I

    new-array v5, v3, [Ljava/lang/Object;

    .line 102
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v4

    .line 101
    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 106
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_0
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    if-nez v1, :cond_1

    .line 111
    sget v1, Lcom/android/settings/R$drawable;->ic_accessibility_generic:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    :goto_1
    sget v2, Lcom/android/settings/R$id;->permissionDialog_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 118
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    sget v1, Lcom/android/settings/R$id;->permissionDialog_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    sget v2, Lcom/android/settings/R$string;->enable_service_title:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 122
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v3, v4

    .line 121
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget p0, Lcom/android/settings/R$id;->permission_enable_allow_button:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 126
    sget p1, Lcom/android/settings/R$id;->permission_enable_deny_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 128
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    sget-object v1, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->filterTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;
    .locals 2

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 157
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static isFullDiskEncrypted()Z
    .locals 1

    .line 87
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->touch_filtered_warning:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return v1
.end method
