.class public final Lio/flutter/plugins/GeneratedPluginRegistrant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeneratedPluginRegistrant"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerWith(Lio/flutter/embedding/engine/a;)V
    .registers 4

    const-string v0, "GeneratedPluginRegistrant"

    :try_start_2
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->q()Lj0/b;

    move-result-object v1

    new-instance v2, Lv0/a;

    invoke-direct {v2}, Lv0/a;-><init>()V

    invoke-interface {v1, v2}, Lj0/b;->i(Lj0/a;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception v1

    const-string v2, "Error registering plugin flutter_plugin_android_lifecycle, io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin"

    invoke-static {v0, v2, v1}, Le0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    :try_start_15
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->q()Lj0/b;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/localauth/e;

    invoke-direct {v2}, Lio/flutter/plugins/localauth/e;-><init>()V

    invoke-interface {v1, v2}, Lj0/b;->i(Lj0/a;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_22

    goto :goto_28

    :catch_22
    move-exception v1

    const-string v2, "Error registering plugin local_auth_android, io.flutter.plugins.localauth.LocalAuthPlugin"

    invoke-static {v0, v2, v1}, Le0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_28
    :try_start_28
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->q()Lj0/b;

    move-result-object v1

    new-instance v2, Lw0/i;

    invoke-direct {v2}, Lw0/i;-><init>()V

    invoke-interface {v1, v2}, Lj0/b;->i(Lj0/a;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception v1

    const-string v2, "Error registering plugin path_provider_android, io.flutter.plugins.pathprovider.PathProviderPlugin"

    invoke-static {v0, v2, v1}, Le0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3b
    :try_start_3b
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->q()Lj0/b;

    move-result-object v1

    new-instance v2, Lx0/b;

    invoke-direct {v2}, Lx0/b;-><init>()V

    invoke-interface {v1, v2}, Lj0/b;->i(Lj0/a;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    move-exception v1

    const-string v2, "Error registering plugin shared_preferences_android, io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin"

    invoke-static {v0, v2, v1}, Le0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4e
    :try_start_4e
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->q()Lj0/b;

    move-result-object v1

    new-instance v2, Lb0/c0;

    invoke-direct {v2}, Lb0/c0;-><init>()V

    invoke-interface {v1, v2}, Lj0/b;->i(Lj0/a;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5a} :catch_5b

    goto :goto_61

    :catch_5b
    move-exception v1

    const-string v2, "Error registering plugin sqflite, com.tekartik.sqflite.SqflitePlugin"

    invoke-static {v0, v2, v1}, Le0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_61
    :try_start_61
    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->q()Lj0/b;

    move-result-object p0

    new-instance v1, Ly0/c;

    invoke-direct {v1}, Ly0/c;-><init>()V

    invoke-interface {p0, v1}, Lj0/b;->i(Lj0/a;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6d} :catch_6e

    goto :goto_74

    :catch_6e
    move-exception p0

    const-string v1, "Error registering plugin url_launcher_android, io.flutter.plugins.urllauncher.UrlLauncherPlugin"

    invoke-static {v0, v1, p0}, Le0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_74
    return-void
.end method
