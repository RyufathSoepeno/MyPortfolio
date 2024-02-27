.class public Lr0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/n$b;,
        Lr0/n$a;
    }
.end annotation


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

    const-string v2, "flutter/settings"

    invoke-direct {v0, p1, v2, v1}, Ls0/a;-><init>(Ls0/c;Ljava/lang/String;Ls0/h;)V

    iput-object v0, p0, Lr0/n;->a:Ls0/a;

    return-void
.end method


# virtual methods
.method public a()Lr0/n$a;
    .registers 3

    new-instance v0, Lr0/n$a;

    iget-object v1, p0, Lr0/n;->a:Ls0/a;

    invoke-direct {v0, v1}, Lr0/n$a;-><init>(Ls0/a;)V

    return-object v0
.end method
