.class Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconInjector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getIcon(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 926
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/android/settingslib/Utils;->getWifiIconResource(IIZ)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
