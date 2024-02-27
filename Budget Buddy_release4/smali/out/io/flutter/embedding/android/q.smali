.class public final synthetic Lio/flutter/embedding/android/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/view/textservice/TextServicesManager;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckerInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
