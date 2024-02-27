.class Lr0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lr0/j;


# direct methods
.method constructor <init>(Lr0/j;)V
    .registers 2

    iput-object p1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls0/i;Ls0/j$d;)V
    .registers 8

    const-string v0, "error"

    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {v1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p1, Ls0/i;->a:Ljava/lang/String;

    iget-object p1, p1, Ls0/i;->b:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlatformChannel"

    invoke-static {v3, v2}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_2c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_24e

    goto/16 :goto_ca

    :sswitch_35
    const-string v4, "SystemChrome.setPreferredOrientations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v2, 0x2

    goto/16 :goto_ca

    :sswitch_40
    const-string v4, "SystemChrome.setEnabledSystemUIOverlays"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v2, 0x4

    goto/16 :goto_ca

    :sswitch_4b
    const-string v4, "Clipboard.getData"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/16 v2, 0xb

    goto/16 :goto_ca

    :sswitch_57
    const-string v4, "SystemChrome.setSystemUIOverlayStyle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/16 v2, 0x8

    goto/16 :goto_ca

    :sswitch_63
    const-string v4, "SystemChrome.setEnabledSystemUIMode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v2, 0x5

    goto :goto_ca

    :sswitch_6d
    const-string v4, "Clipboard.hasStrings"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/16 v2, 0xd

    goto :goto_ca

    :sswitch_78
    const-string v4, "SystemChrome.restoreSystemUIOverlays"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v2, 0x7

    goto :goto_ca

    :sswitch_82
    const-string v4, "SystemSound.play"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v2, 0x0

    goto :goto_ca

    :sswitch_8c
    const-string v4, "HapticFeedback.vibrate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v2, 0x1

    goto :goto_ca

    :sswitch_96
    const-string v4, "SystemChrome.setApplicationSwitcherDescription"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v2, 0x3

    goto :goto_ca

    :sswitch_a0
    const-string v4, "SystemChrome.setSystemUIChangeListener"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/4 v2, 0x6

    goto :goto_ca

    :sswitch_aa
    const-string v4, "Clipboard.setData"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/16 v2, 0xc

    goto :goto_ca

    :sswitch_b5
    const-string v4, "SystemNavigator.pop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    const/16 v2, 0xa

    goto :goto_ca

    :sswitch_c0
    const-string v4, "SystemNavigator.setFrameworkHandlesBack"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c6
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_c6} :catch_234

    if-eqz v1, :cond_ca

    const/16 v2, 0x9

    :cond_ca
    :goto_ca
    const-string v1, "text"

    packed-switch v2, :pswitch_data_288

    :try_start_cf
    invoke-interface {p2}, Ls0/j$d;->c()V

    goto/16 :goto_24d

    :pswitch_d4
    iget-object p1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {p1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object p1

    invoke-interface {p1}, Lr0/j$h;->m()Z

    move-result p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "value"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-interface {p2, v1}, Ls0/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_24d

    :pswitch_ed
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {v1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object v1

    invoke-interface {v1, p1}, Lr0/j$h;->h(Ljava/lang/String;)V

    :cond_fc
    :goto_fc
    invoke-interface {p2, v3}, Ls0/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_24d

    :pswitch_101
    check-cast p1, Ljava/lang/String;
    :try_end_103
    .catch Lorg/json/JSONException; {:try_start_cf .. :try_end_103} :catch_234

    if-eqz p1, :cond_11e

    :try_start_105
    invoke-static {p1}, Lr0/j$e;->a(Ljava/lang/String;)Lr0/j$e;

    move-result-object p1
    :try_end_109
    .catch Ljava/lang/NoSuchFieldException; {:try_start_105 .. :try_end_109} :catch_10a
    .catch Lorg/json/JSONException; {:try_start_105 .. :try_end_109} :catch_234

    goto :goto_11f

    :catch_10a
    :try_start_10a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such clipboard content format: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v3}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11e
    move-object p1, v3

    :goto_11f
    iget-object v2, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {v2}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object v2

    invoke-interface {v2, p1}, Lr0/j$h;->a(Lr0/j$e;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_fc

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p2, v2}, Ls0/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_24d

    :pswitch_138
    iget-object p1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {p1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object p1

    invoke-interface {p1}, Lr0/j$h;->b()V

    goto :goto_fc

    :pswitch_142
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {v1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object v1

    invoke-interface {v1, p1}, Lr0/j$h;->j(Z)V
    :try_end_151
    .catch Lorg/json/JSONException; {:try_start_10a .. :try_end_151} :catch_234

    goto :goto_fc

    :pswitch_152
    :try_start_152
    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v1, p1}, Lr0/j;->f(Lr0/j;Lorg/json/JSONObject;)Lr0/j$j;

    move-result-object p1

    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {v1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object v1

    invoke-interface {v1, p1}, Lr0/j$h;->i(Lr0/j$j;)V

    invoke-interface {p2, v3}, Ls0/j$d;->a(Ljava/lang/Object;)V
    :try_end_166
    .catch Lorg/json/JSONException; {:try_start_152 .. :try_end_166} :catch_16a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_152 .. :try_end_166} :catch_168

    goto/16 :goto_24d

    :catch_168
    move-exception p1

    goto :goto_16b

    :catch_16a
    move-exception p1

    :goto_16b
    :try_start_16b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_16f
    invoke-interface {p2, v0, p1, v3}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_24d

    :pswitch_174
    iget-object p1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {p1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object p1

    invoke-interface {p1}, Lr0/j$h;->g()V

    goto/16 :goto_fc

    :pswitch_17f
    iget-object p1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {p1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object p1

    invoke-interface {p1}, Lr0/j$h;->e()V
    :try_end_188
    .catch Lorg/json/JSONException; {:try_start_16b .. :try_end_188} :catch_234

    goto/16 :goto_fc

    :pswitch_18a
    :try_start_18a
    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lr0/j;->e(Lr0/j;Ljava/lang/String;)Lr0/j$k;

    move-result-object p1

    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {v1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object v1

    invoke-interface {v1, p1}, Lr0/j$h;->l(Lr0/j$k;)V

    invoke-interface {p2, v3}, Ls0/j$d;->a(Ljava/lang/Object;)V
    :try_end_19e
    .catch Lorg/json/JSONException; {:try_start_18a .. :try_end_19e} :catch_1a2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_18a .. :try_end_19e} :catch_1a0

    goto/16 :goto_24d

    :catch_1a0
    move-exception p1

    goto :goto_1a3

    :catch_1a2
    move-exception p1

    :goto_1a3
    :try_start_1a3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1a7
    .catch Lorg/json/JSONException; {:try_start_1a3 .. :try_end_1a7} :catch_234

    goto :goto_16f

    :pswitch_1a8
    :try_start_1a8
    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {v1, p1}, Lr0/j;->d(Lr0/j;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {v1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object v1

    invoke-interface {v1, p1}, Lr0/j$h;->c(Ljava/util/List;)V

    invoke-interface {p2, v3}, Ls0/j$d;->a(Ljava/lang/Object;)V
    :try_end_1bc
    .catch Lorg/json/JSONException; {:try_start_1a8 .. :try_end_1bc} :catch_1c0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1a8 .. :try_end_1bc} :catch_1be

    goto/16 :goto_24d

    :catch_1be
    move-exception p1

    goto :goto_1c1

    :catch_1c0
    move-exception p1

    :goto_1c1
    :try_start_1c1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1c5
    .catch Lorg/json/JSONException; {:try_start_1c1 .. :try_end_1c5} :catch_234

    goto :goto_16f

    :pswitch_1c6
    :try_start_1c6
    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v1, p1}, Lr0/j;->c(Lr0/j;Lorg/json/JSONObject;)Lr0/j$c;

    move-result-object p1

    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {v1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object v1

    invoke-interface {v1, p1}, Lr0/j$h;->f(Lr0/j$c;)V

    invoke-interface {p2, v3}, Ls0/j$d;->a(Ljava/lang/Object;)V
    :try_end_1da
    .catch Lorg/json/JSONException; {:try_start_1c6 .. :try_end_1da} :catch_1dc

    goto/16 :goto_24d

    :catch_1dc
    move-exception p1

    :try_start_1dd
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1e1
    .catch Lorg/json/JSONException; {:try_start_1dd .. :try_end_1e1} :catch_234

    goto :goto_16f

    :pswitch_1e2
    :try_start_1e2
    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {v1, p1}, Lr0/j;->b(Lr0/j;Lorg/json/JSONArray;)I

    move-result p1

    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {v1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object v1

    invoke-interface {v1, p1}, Lr0/j$h;->k(I)V

    invoke-interface {p2, v3}, Ls0/j$d;->a(Ljava/lang/Object;)V
    :try_end_1f6
    .catch Lorg/json/JSONException; {:try_start_1e2 .. :try_end_1f6} :catch_1f9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1e2 .. :try_end_1f6} :catch_1f7

    goto :goto_24d

    :catch_1f7
    move-exception p1

    goto :goto_1fa

    :catch_1f9
    move-exception p1

    :goto_1fa
    :try_start_1fa
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1fe
    .catch Lorg/json/JSONException; {:try_start_1fa .. :try_end_1fe} :catch_234

    goto/16 :goto_16f

    :pswitch_200
    :try_start_200
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lr0/j$g;->a(Ljava/lang/String;)Lr0/j$g;

    move-result-object p1

    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {v1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object v1

    invoke-interface {v1, p1}, Lr0/j$h;->n(Lr0/j$g;)V

    invoke-interface {p2, v3}, Ls0/j$d;->a(Ljava/lang/Object;)V
    :try_end_212
    .catch Ljava/lang/NoSuchFieldException; {:try_start_200 .. :try_end_212} :catch_213
    .catch Lorg/json/JSONException; {:try_start_200 .. :try_end_212} :catch_234

    goto :goto_24d

    :catch_213
    move-exception p1

    :try_start_214
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_218
    .catch Lorg/json/JSONException; {:try_start_214 .. :try_end_218} :catch_234

    goto/16 :goto_16f

    :pswitch_21a
    :try_start_21a
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lr0/j$i;->a(Ljava/lang/String;)Lr0/j$i;

    move-result-object p1

    iget-object v1, p0, Lr0/j$a;->a:Lr0/j;

    invoke-static {v1}, Lr0/j;->a(Lr0/j;)Lr0/j$h;

    move-result-object v1

    invoke-interface {v1, p1}, Lr0/j$h;->d(Lr0/j$i;)V

    invoke-interface {p2, v3}, Ls0/j$d;->a(Ljava/lang/Object;)V
    :try_end_22c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21a .. :try_end_22c} :catch_22d
    .catch Lorg/json/JSONException; {:try_start_21a .. :try_end_22c} :catch_234

    goto :goto_24d

    :catch_22d
    move-exception p1

    :try_start_22e
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_232
    .catch Lorg/json/JSONException; {:try_start_22e .. :try_end_232} :catch_234

    goto/16 :goto_16f

    :catch_234
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v3}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_24d
    return-void

    :sswitch_data_24e
    .sparse-switch
        -0x59804db0 -> :sswitch_c0
        -0x2dad73d5 -> :sswitch_b5
        -0x2af4a94c -> :sswitch_aa
        -0x2267c49c -> :sswitch_a0
        -0x20b0f718 -> :sswitch_96
        -0xebc6f23 -> :sswitch_8c
        -0xcd4cf9e -> :sswitch_82
        0xe6a45af -> :sswitch_78
        0x3436a200 -> :sswitch_6d
        0x4341194a -> :sswitch_63
        0x52e10221 -> :sswitch_57
        0x5a408fa8 -> :sswitch_4b
        0x63cbfa4a -> :sswitch_40
        0x7e576127 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_288
    .packed-switch 0x0
        :pswitch_21a
        :pswitch_200
        :pswitch_1e2
        :pswitch_1c6
        :pswitch_1a8
        :pswitch_18a
        :pswitch_17f
        :pswitch_174
        :pswitch_152
        :pswitch_142
        :pswitch_138
        :pswitch_101
        :pswitch_ed
        :pswitch_d4
    .end packed-switch
.end method
