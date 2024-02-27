.class public Lr0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf0/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/a;

    sget-object v1, Ls0/e;->a:Ls0/e;

    const-string v2, "flutter/system"

    invoke-direct {v0, p1, v2, v1}, Ls0/a;-><init>(Ls0/c;Ljava/lang/String;Ls0/h;)V

    iput-object v0, p0, Lr0/p;->a:Ls0/a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const-string v0, "SystemChannel"

    const-string v1, "Sending memory pressure warning to Flutter."

    invoke-static {v0, v1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "type"

    const-string v2, "memoryPressure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lr0/p;->a:Ls0/a;

    invoke-virtual {v1, v0}, Ls0/a;->c(Ljava/lang/Object;)V

    return-void
.end method
