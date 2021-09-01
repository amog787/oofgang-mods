.class public Lcom/oneplus/inner/os/SystemPropertiesWrapper;
.super Ljava/lang/Object;
.source "SystemPropertiesWrapper.java"


# direct methods
.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
